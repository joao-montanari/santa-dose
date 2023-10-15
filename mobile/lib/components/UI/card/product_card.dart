import 'package:flutter/material.dart';

import 'package:mobile/models/product.dart';
import 'package:mobile/screens/details_product.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.produto,
  });

  final Produto produto;

  @override
  State<ProductCard> createState() => _ProductCard();
}

class _ProductCard extends State<ProductCard> {
  String cifrao = r'R$: ';

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      color: const Color.fromARGB(1000, 34, 40, 58),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsProduct(
                produto: widget.produto,
              ),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8)
                      ),
                    ),
                    child: Image.network(widget.produto.image ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.produto.nome ?? '',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Avaliação: ${widget.produto.avaliacao}',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          cifrao + (widget.produto.preco.toString() ?? ''),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 50),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red.shade400,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
