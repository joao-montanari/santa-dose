import 'package:flutter/material.dart';
import 'package:mobile/screens/cart.dart';
import 'package:mobile/screens/user.dart';

class TopBar extends StatefulWidget implements PreferredSizeWidget {
  const TopBar({
    super.key,
  });

  @override
  State<TopBar> createState() => _TopBar();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TopBar extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(23, 0, 0, 13),
      foregroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => User(),
                ),
              );
            },
            child: const Icon(
              Icons.account_circle_outlined,
              size: 50,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Nome:',
                  style: TextStyle(
                    color: Color.fromRGBO(233, 212, 26, 1),
                    fontSize: 18,
                  ),
                ),
                Text(
                  'João Montanari',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(21),
                  ),
                ),
                child: const Icon(
                  Icons.favorite,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(21),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cart(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
