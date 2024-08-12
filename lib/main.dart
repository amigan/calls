import 'package:flutter/material.dart';
import 'views/radio.dart';

void main() {
  runApp(const CallsApp());
}

class CallsApp extends StatelessWidget {
  const CallsApp({super.key});

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
