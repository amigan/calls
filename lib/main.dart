import 'package:flutter/material.dart';
import 'views/radio.dart';
import 'controller/ws.dart';

void main() {
  LiveFeeder f = LiveFeeder();
  f.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stillbox Calls',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: const MainRadio(title: 'Stillbox'),
    );
  }
}
