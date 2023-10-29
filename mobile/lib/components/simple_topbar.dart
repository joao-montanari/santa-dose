import 'package:flutter/material.dart';

class SimpleTopbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool isShowFavorite;

  const SimpleTopbar({
    super.key,
    required this.title,
    this.isShowFavorite = false,
  });

  @override
  State<SimpleTopbar> createState() => _SimpleTopbar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SimpleTopbar extends State<SimpleTopbar> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(23, 0, 0, 13),
      foregroundColor: Colors.white,
      title: Row(
        children: [
          Text(
            widget.title
          ),
          const Expanded(
            child: SizedBox(),
          ),
          widget.isShowFavorite ?
            isFavorite ?
              IconButton(
                onPressed: (){
                  setState(() {
                    isFavorite = false;
                  });
                }, 
                icon: Icon(
                  Icons.favorite,
                  size: 30,
                  color: Colors.red.shade500,
                ),
              ) : IconButton(
                onPressed: (){
                  setState(() {
                    isFavorite = true;
                  });
                }, 
                icon: const Icon(
                  Icons.favorite_border, 
                  size: 30,
                ),
              ) :
              const SizedBox(),
        ],
      ),
    );
  }
}
