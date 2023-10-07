import 'package:flutter/material.dart';
import 'package:mobile/screens/home.dart';
import 'package:mobile/screens/user.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<StatefulWidget> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(29, 255, 255, 255),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (ctx) => Home(),
                ),
              );
            },
            icon: Icon(
              Icons.home,
              color: Colors.grey.shade300,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.grey.shade300,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.map_outlined,
              color: Colors.grey.shade300,
              size: 40,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => User(),
                ),
              );
            },
            icon: Icon(
              Icons.people_alt_outlined,
              color: Colors.grey.shade300,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
