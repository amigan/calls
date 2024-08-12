import 'package:flutter/material.dart';
import 'views/radio.dart';
import 'views/login.dart';
import 'controller/ws.dart';

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
      home: const CallsHome(),
    );
  }
}

class CallsHome extends StatefulWidget {
  const CallsHome({super.key});

  @override
  State<StatefulWidget> createState() => CallsHomeState();
}

class CallsHomeState extends State<CallsHome> {
  final c = Client();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadData();
    });
  }

  Future<void> loadData() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate some delay

    // Ensure the navigation happens in the context of this widget's subtree
    if (mounted) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const Login(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child;
          },
          transitionDuration: const Duration(milliseconds: 0),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const MainRadio(title: 'Stillbox');
  }
}
