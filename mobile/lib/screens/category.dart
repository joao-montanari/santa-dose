import 'package:flutter/material.dart';
import 'package:mobile/components/simple_topbar.dart';

class Category extends StatefulWidget {
  const Category({
    super.key,
    required this.category,
    required this.title,
  });

  final String category;
  final String title;

  State<Category> createState() => _Category();
}

class _Category extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: SimpleTopbar(title: widget.title),
    );
  }
}