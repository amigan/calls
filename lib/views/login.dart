import 'package:calls/main.dart';
import 'package:flutter/material.dart';
import '../controller/stillbox.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController uriController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('stillbox login:'),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(children: [
                Builder(builder: (context) {
                  if (!(Uri.base.scheme == 'http' ||
                      Uri.base.scheme == 'https')) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 10),
                        child: TextFormField(
                          controller: uriController,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Server URL"),
                          validator: (value) {
                            if (value != null) {
                              return Uri.parse(value).isAbsolute
                                  ? null
                                  : 'Please enter a valid URL.';
                            } else {
                              return 'Please enter a valid URL.';
                            }
                          },
                        ));
                  }

                  return Container();
                }),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: TextFormField(
                      controller: userController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: "Username"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username.';
                        }
                        return null;
                      },
                    )),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: "Password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password.';
                        }
                        return null;
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 16.0),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Provider.of<Stillbox>(context, listen: false)
                                .doLogin(
                                    uriController.text,
                                    userController.text,
                                    passwordController.text)
                                .then((result) {
                              if (result == true && mounted) {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation,
                                            secondaryAnimation) =>
                                        const CallsHome(),
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      return child;
                                    },
                                    transitionDuration:
                                        const Duration(milliseconds: 0),
                                  ),
                                );
                              }
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Please login.')),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Login'),
                      ),
                    )),
              ])),
        ));
  }
}
