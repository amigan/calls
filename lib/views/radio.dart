import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import '../../views/lcd.dart';
import '../../views/keypad.dart';
import '../../views/login.dart';
import '../controller/stillbox.dart';
import 'play.dart';

class MainRadio extends StatefulWidget {
  const MainRadio({super.key, required this.title});

  final String title;

  @override
  State<MainRadio> createState() => _MainRadioState();
}

class _MainRadioState extends State<MainRadio> {
  final player = JustAudioDriver();
  bool lcdState = false;
  static const _lcdTimeout = 3;
  static const _lcdOnColor = Colors.amber;
  static const _lcdOffColor = Color.fromARGB(255, 255, 219, 110);
  Color _lcdColor = _lcdOffColor;
  Color _ledColor = Colors.black;
  Timer? _lcdTimer;
  SBCall? _call;
  Completer _completer = Completer();
  int queueLen = 0;
  DateFormat timeFormat = DateFormat('HH:mm');

  void _setupAudioSession() async {
    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.music());
  }

  @override
  void initState() {
    super.initState();
    _setupAudioSession();
    final sb = Provider.of<Stillbox>(context, listen: false);

    player.player.playerStateStream.listen((event) async {
      if (event.processingState == ProcessingState.completed &&
          !_completer.isCompleted) {
        _completer.complete();
        setState(() {
          _ledColor = Colors.black;
        });
      }
    });
    sb.callQStream.stream.listen((ctAdd) {
      setState(() {
        queueLen += ctAdd;
      });
    });

    _callLoop(sb);
  }

  void _handleSocketError(dynamic error) {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const Login(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return child;
        },
        transitionDuration: const Duration(milliseconds: 0),
      ),
    );
  }

  void _callLoop(Stillbox sb) async {
    var streamWithoutErrors =
        sb.callStream.stream.handleError((error) => _handleSocketError(error));
    await for (final call in streamWithoutErrors) {
      lcdOn();
      setState(() {
        _call = call;
        queueLen--;
      });
      _completer = Completer();
      player.play(call.call);
      await _completer.future;
      lcdOff();
    } //);
  }

  void lcdOn() {
    if (_lcdTimer != null) {
      _lcdTimer!.cancel();
      _lcdTimer = null;
    }
    setState(() {
      _ledColor = const Color.fromARGB(255, 226, 62, 255);
      _lcdColor = _lcdOnColor;
    });
  }

  void lcdOff() {
    if (_lcdTimer != null) {
      _lcdTimer!.cancel();
    }
    _lcdTimer = Timer(const Duration(seconds: _lcdTimeout), () {
      setState(() {
        _lcdColor = _lcdOffColor;
      });
      _lcdTimer = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SizedBox(
            width: 500.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const ScannerLabel('Stillbox'),
                      LED(_ledColor),
                    ]),
                LCD(_call, _lcdColor, queueLen, timeFormat),
                const Keypad(),
              ],
            )),
      ),
    ));
  }

  Widget lcdContents() {
    return Consumer<Stillbox>(builder: (context, sb, child) {
      return Container();
    });
  }
}
