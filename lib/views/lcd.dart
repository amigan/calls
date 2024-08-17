import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../controller/stillbox.dart';
import '../pb/stillbox.pb.dart';

class LCD extends StatefulWidget {
  const LCD({super.key});

  @override
  State<LCD> createState() => _LCDState();
}

class _LCDState extends State<LCD> {
  static const _lcdOnColor = Colors.amber;
  static const _lcdOffColor = Color.fromARGB(255, 255, 219, 110);
  Color _lcdColor = _lcdOffColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: _lcdColor,
          border: const Border(
            top: BorderSide(width: 3.0, color: Colors.black),
            left: BorderSide(width: 3.0, color: Colors.black),
            bottom: BorderSide(
                width: 3.0, color: Color.fromARGB(172, 255, 255, 255)),
            right: BorderSide(width: 3.0, color: Colors.white),
          ),
        ),
        margin: const EdgeInsets.all(16.0),
        alignment: Alignment.topCenter,
        width: double.infinity,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black,
              ),
              child: lcdContents(),
            ),
          ),
        ));
  }

  void lcdOn() {
    setState(() {
      _lcdColor = _lcdOnColor;
    });
  }

  void lcdOff() {
    setState(() {
      _lcdColor = _lcdOffColor;
    });
  }

  Widget lcdContents() {
    return Consumer<Stillbox>(builder: (context, sb, child) {
      if (sb.currentCall != null) {
        lcdOn();
        return FutureBuilder(
            future: sb.currentCall?.tg,
            builder: (BuildContext context, AsyncSnapshot<TalkgroupInfo> tgi) {
              return Text(
                  '${tgi.data?.name ?? sb.currentCall!.call.talkgroup}${tgi.data?.learned ?? false ? ' 📓' : ''}');
            });
      }

      return const Text('');
    });
  }
}

class ScannerLabel extends StatefulWidget {
  const ScannerLabel({super.key});

  @override
  State<ScannerLabel> createState() => _ScannerLabelState();
}

class _ScannerLabelState extends State<ScannerLabel> {
  String _label = "Stillbox";

  void setLabel(String s) {
    _label = s;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      alignment: Alignment.topLeft,
      child: Text(_label,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Warnes",
          )),
    );
  }
}
