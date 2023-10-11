import 'package:flutter/material.dart';
import 'package:mobile/components/bottom_bar.dart';
import 'package:mobile/components/topbar.dart';

class Cart extends StatefulWidget {
  Cart({
    super.key,
  });

  @override
  State<Cart> createState() => _Cart();
}

class _Cart extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: const TopBar(),
      bottomNavigationBar: const BottomBar(select: 'cart'),
      bottomSheet: Container(
        color: const Color.fromARGB(255, 0, 1, 21),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child:  ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(10, 28, 31, 232),
                    ),
                    side: MaterialStatePropertyAll(
                      BorderSide(
                        width: 2,
                        color: Color.fromRGBO(233, 212, 26, 1),
                      )
                    ),
                  ), 
                  onPressed: (){},
                  child: const Text(
                    'Finalizar compra',
                    style: TextStyle(
                      color: Color.fromRGBO(233, 212, 26, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}