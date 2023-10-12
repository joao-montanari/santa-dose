import 'package:flutter/material.dart';
import 'package:mobile/models/address.dart';

class CardAdresses extends StatefulWidget {
  const CardAdresses({
    super.key,
    required this.endereco,
  });

  final Endereco? endereco;

  @override
  State<CardAdresses> createState() => _CardAdresses();
}

class _CardAdresses extends State<CardAdresses> {
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
                                Icons.place_outlined,
                                color: Colors.yellow,
                                size: 40,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rua: ${widget.endereco?.rua}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Text(
                                  'Bairro: ${widget.endereco?.bairro}',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                            size: 30,
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
