import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({
    super.key,
  });

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(24, 26, 32, 1000),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(23, 0, 0, 13),
        foregroundColor: Colors.white,
        title: const Text('Login'),
      ),
    );
  }
}