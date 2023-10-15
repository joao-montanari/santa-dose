import 'package:flutter/material.dart';

import 'package:mobile/components/UI/card/cart_card.dart';
import 'package:mobile/components/bottom_bar.dart';
import 'package:mobile/components/topbar.dart';
import 'package:mobile/functions/measures.dart';

import 'package:mobile/models/product.dart';
import 'package:mobile/screens/buy.dart';

class Cart extends StatefulWidget {
  Cart({
    super.key,
  });

  @override
  State<Cart> createState() => _Cart();
}

class _Cart extends State<Cart> {
  List<Produto> produtos = [
    Produto(
      id: 1,
      nome: 'White Horse',
      avaliacao: 4.9,
      preco: 250,
      fornecedor: 'Santa Dose',
      descricao:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      image:
          'https://diageo.vtexassets.com/arquivos/ids/161416/734530_WHISKY-ESCOCES-WHITE-HORSE---500ML_2.png?v=638011187062900000',
    ),
    Produto(
      id: 2,
      nome: 'Heineken',
      avaliacao: 4.8,
      preco: 13,
      fornecedor: 'Santa Dose',
      descricao:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      image:
          'https://acdn.mitiendanube.com/stores/938/249/products/haiua1-dfe64d0681c3e6d6d116775956472998-640-0.png',
    ),
    Produto(
      id: 3,
      nome: 'Skol',
      avaliacao: 4.7,
      preco: 7.5,
      fornecedor: 'Santa Dose',
      descricao:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      image:
          'https://i0.wp.com/assets.b9.com.br/wp-content/uploads/2018/12/skol-puro-malte.jpg?fit=1280%2C720&ssl=1',
    ),
    Produto(
      id: 4,
      nome: 'Coca Cola',
      avaliacao: 4.6,
      preco: 8,
      fornecedor: 'Santa Dose',
      descricao:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      image:
          'https://dcdn.mitiendanube.com/stores/001/266/031/products/coca-2lt-site1-3fe594a7cce8f4f97c16402142098102-480-0.png',
    ),
    Produto(
      id: 5,
      nome: 'Askov',
      avaliacao: 4.5,
      preco: 7.5,
      fornecedor: 'Santa Dose',
      descricao:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      image:
          'https://distribuidorameg.com/wp-content/uploads/2020/12/D_NQ_NP_694363-MLB26428485710_112017-O.jpg',
    ),
    Produto(
      id: 6,
      nome: 'Absolute',
      avaliacao: 4.4,
      preco: 70,
      fornecedor: 'Santa Dose',
      descricao:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      image:
          'https://superadega.vteximg.com.br/arquivos/ids/170982-520-520/Vodka-Absolut-Natural-1L.jpg?v=637775923203930000',
    ),
  ];

  Future<List<Produto>> getProducts() {
    return Future(() => produtos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: const TopBar(),
      bottomNavigationBar: const BottomBar(select: 'cart'),
      body: Column(
        children: [
          FutureBuilder<List<Produto>>(
            future: getProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: CircularProgressIndicator()),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    'Erro ${snapshot.error}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              } else if (snapshot.data!.isEmpty) {
                return const Center(
                  child: Text(
                    'Nenhum endereço cadastrado.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              } else {
                return SizedBox(
                  height: Measures.getHeight(context) - 250,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      Produto produto = snapshot.data![index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CartCard(
                          produto: produto,
                        ),
                      );
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
      bottomSheet: Container(
        color: const Color.fromARGB(255, 0, 1, 21),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(10, 28, 31, 232),
                    ),
                    side: MaterialStatePropertyAll(BorderSide(
                      width: 2,
                      color: Color.fromRGBO(233, 212, 26, 1),
                    )),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Buy(),
                      ),
                    );
                  },
                  child: const Text(
                    'Finalizar compra',
                    style: TextStyle(
                        color: Color.fromRGBO(233, 212, 26, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
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
