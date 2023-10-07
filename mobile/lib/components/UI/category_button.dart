import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  CategoryButton({
    super.key,
    required this.tilte,
    required this.icon,
  });

  final String tilte;
  final IconData icon;

  @override
  State<CategoryButton> createState() => _CategoryButton();
}

class _CategoryButton extends State<CategoryButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Color.fromARGB(37, 255, 255, 255),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Container(
          width: 50,
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: Colors.white,
                size: 30,
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  widget.tilte,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
