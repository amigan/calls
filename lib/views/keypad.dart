import 'package:flutter/material.dart';

class Keypad extends StatefulWidget {
  const Keypad({super.key});

  @override
  State<Keypad> createState() => _KeypadState();
}

class _KeypadState extends State<Keypad> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16.0),
        child: const Column(children: [
          Row(children: [
            Text(
              "test",
            )
          ]),
          Row(),
          Row(),
        ]));
  }
}
