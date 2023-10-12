import 'package:flutter/material.dart';

import 'package:mobile/models/product.dart';

class CartCard extends StatefulWidget {
  const CartCard({
    super.key,
    required this.produto,
  });

  final Produto? produto;

  @override
  State<CartCard> createState() => _CartCard();
}

class _CartCard extends State<CartCard> {
  String cifrao = r'R$: ';

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(12, 28, 31, 232),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.circle_outlined,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.produto?.nome ?? '',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  cifrao +
                                      (widget.produto?.preco.toString() ?? ''),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            alignment: Alignment.topCenter,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      width: 1,
                      color: Colors.grey.shade700,
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
