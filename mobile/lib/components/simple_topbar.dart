import 'package:flutter/material.dart';

class SimpleTopbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const SimpleTopbar({
    super.key,
    required this.title,
  });

  @override
  State<SimpleTopbar> createState() => _SimpleTopbar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SimpleTopbar extends State<SimpleTopbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(23, 0, 0, 13),
      foregroundColor: Colors.white,
      title: Text(widget.title),
    );
  }
}
