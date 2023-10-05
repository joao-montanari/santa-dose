import 'package:flutter/material.dart';
import 'package:mobile/components/topbar.dart';

class Home extends StatefulWidget {
  Home({
    super.key,
  });

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(24, 26, 32, 1000),
      appBar: const TopBar(),
      body: Center(),
    );
  }
}
