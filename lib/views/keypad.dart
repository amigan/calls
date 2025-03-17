import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/stillbox.dart';
import 'play.dart';

class Keypad extends StatefulWidget {
  final JustAudioDriver player;

  const Keypad({super.key, required this.player});

  @override
  State<Keypad> createState() => _KeypadState();
}
/*
class KeypadKey extends ElevatedButton {
  @override
  ButtonStyle? themeStyleOf(BuildContext context) {
    return ElevatedButtonTheme(
      data: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: BoxBorder()
        )
      ),
    );
  }
}
*/

class _KeypadState extends State<Keypad> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(children: [
            ElevatedButton(onPressed: () async {
              widget.player.player.stop();
              Provider.of<Stillbox>(context, listen: false).flushQueue();
            },
            child: const Text('Login'),
            ),
          ]),
          Row(),
          Row(),
        ]));
  }
}
