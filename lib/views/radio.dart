import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:just_audio/just_audio.dart';
import '../../views/lcd.dart';
import '../../views/keypad.dart';
import '../controller/stillbox.dart';
import 'play.dart';

class MainRadio extends StatefulWidget {
  const MainRadio({super.key, required this.title});

  final String title;

  @override
  State<MainRadio> createState() => _MainRadioState();
}

class _MainRadioState extends State<MainRadio> {
  Player player = Player();
  bool lcdState = false;
  static const _lcdTimeout = 3;
  static const _lcdOnColor = Colors.amber;
  static const _lcdOffColor = Color.fromARGB(255, 255, 219, 110);
  Color _lcdColor = _lcdOffColor;
  Color _ledColor = Colors.black;
  Timer? _lcdTimer;
  SBCall? _call;

  @override
  void initState() {
    super.initState();
    final sb = Provider.of<Stillbox>(context, listen: false);
    player.driver.playerStateStream.listen((event) async {
      if (!event.playing &&
          event.processingState == ProcessingState.completed) {
        setState(() {
          _ledColor = Colors.black;
        });
      }
    });
    sb.callStream.stream.listen((call) async {
      lcdOn();
      setState(() {
        _call = call;
      });
      await player.play(call.call);
      lcdOff();
    });
  }

  void lcdOn() {
    if (_lcdTimer != null) {
      _lcdTimer!.cancel();
      _lcdTimer = null;
    }
    setState(() {
      _ledColor = Colors.purple;
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
                LCD(_call, _lcdColor),
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
