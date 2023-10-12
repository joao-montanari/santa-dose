import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.id,
    required this.nome,
    required this.avaliacao,
    required this.preco,
    required this.fornecedor,
    required this.descricao,
    required this.image,
  });

  final int? id;
  final String? nome;
  final double? avaliacao;
  final double? preco;
  final String? fornecedor;
  final String? descricao;
  final String? image;

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
        onTap: () {},
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
                    child: Image.network(widget.image ?? ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.nome ?? '',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Avaliação: ${widget.avaliacao}',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          cifrao + (widget.preco.toString() ?? ''),
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
