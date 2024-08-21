import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../controller/stillbox.dart';
import '../pb/stillbox.pb.dart';

class LCD extends StatelessWidget {
  final Color _lcdColor;
  final SBCall? _call;
  final int queueLen;
  final DateFormat timeFormat;
  const LCD(this._call, this._lcdColor, this.queueLen, this.timeFormat,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: _lcdColor,
          border: const Border(
            top: BorderSide(width: 3.0, color: Colors.black),
            left: BorderSide(width: 3.0, color: Colors.black),
            bottom: BorderSide(width: 3.0, color: Colors.white),
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
    String callTime = '';
    if (_call != null) {
      callTime =
          timeFormat.format(_call.call.dateTime.toDateTime(toLocal: true));
    }
    return FutureBuilder(
        future: _call?.tg,
        builder: (BuildContext context, AsyncSnapshot<TalkgroupInfo> tgi) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(callTime),
                      Text(
                          '${tgi.data?.systemName ?? (_call?.call.system ?? '')}'),
                      Text('Q: $queueLen'),
                    ]),
                Row(
                  children: [Flexible(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                              Text(
                                  '${tgi.data?.name ?? (_call?.call.talkgroup ?? '')}${tgi.data?.learned ?? false ? ' 📓' : ''}',
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                    overflow: TextOverflow.ellipsis,
                                  )),
                      Text(_call != null ? '${_call.call.talkgroup}' : ''),
                    ]),
                  )]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_call != null ? '${(_call.call.frequency.toDouble() / 1024 / 1024).toStringAsFixed(4)} MHz' : ''),
                      Text(_call != null ? 'S: ${_call.call.source}' : ''),
                    ]),
              ]);
        });
  }
}

class LED extends StatelessWidget {
  final Color _ledColor;

  const LED(this._ledColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.0,
      height: 20.0,
      margin: const EdgeInsets.only(top: 4.0, right: 10.0),
      decoration: BoxDecoration(
        color: _ledColor,
        shape: BoxShape.circle,
        border: const Border(
            top: BorderSide(width: 1.0, color: Colors.white),
            left: BorderSide(width: 1.0, color: Colors.white),
        ),
        boxShadow: [
          BoxShadow(color: const Color.fromARGB(255, 151, 151, 151), offset: Offset.fromDirection(1, 3.0), blurRadius: 4.0, spreadRadius: 2.0)
        ]
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
