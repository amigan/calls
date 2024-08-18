import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../controller/stillbox.dart';
import '../pb/stillbox.pb.dart';

class LCD extends StatelessWidget {
  final Color _lcdColor;
  final SBCall? _call;
  final int queueLen;
  const LCD(this._call, this._lcdColor, this.queueLen, {super.key});

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

  Widget lcdContents() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FutureBuilder(
              future: _call?.tg,
              builder:
                  (BuildContext context, AsyncSnapshot<TalkgroupInfo> tgi) {
                return Text(
                    '${tgi.data?.name ?? (_call?.call.talkgroup ?? '')}${tgi.data?.learned ?? false ? ' 📓' : ''}');
              }),
          Text('Q: $queueLen'),
        ]);
  }
}

class LED extends StatelessWidget {
  final Color _ledColor;

  LED(this._ledColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: _ledColor,
        shape: BoxShape.circle,
      ),
    );
  }
}

class ScannerLabel extends StatelessWidget {
  final String _label;

  const ScannerLabel(this._label, {super.key});

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
