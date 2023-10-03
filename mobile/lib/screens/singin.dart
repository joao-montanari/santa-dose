import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  const SingIn({
    super.key,
  });

  @override
  State<SingIn> createState() => _SingIn();
}

class _SingIn extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(24, 26, 32, 1000),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(23, 0, 0, 13),
        foregroundColor: Colors.white,
        title: const Text('Cadastro'),
      ),
    );
  }
}