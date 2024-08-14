import 'package:flutter/material.dart';
import '../../views/lcd.dart';
import '../../views/keypad.dart';

class MainRadio extends StatefulWidget {
  const MainRadio({super.key, required this.title});

  final String title;

  @override
  State<MainRadio> createState() => _MainRadioState();
}

class _MainRadioState extends State<MainRadio> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: Center(
        child: SizedBox(
            width: 500.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ScannerLabel(),
                LCD(),
                Keypad(),
              ],
            )),
      ),
    ));
  }
}
