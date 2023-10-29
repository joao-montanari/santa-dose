import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:mobile/components/UI/category_button.dart';
import 'package:mobile/components/UI/card/product_card.dart';
import 'package:mobile/components/UI/standard_text_field.dart';
import 'package:mobile/components/topbar.dart';
import 'package:mobile/components/bottom_bar.dart';
import 'package:mobile/functions/measures.dart';

import 'package:mobile/models/product.dart';
import 'package:mobile/screens/category.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  final _searchController = TextEditingController();

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
      bottomNavigationBar: const BottomBar(select: 'home'),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: StandardTextField(
                controller: _searchController,
                labelText: 'Pesquisar',
                icon: Icons.search,
              ),
            ),
            const Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Text(
                      'Categorias:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryButton(
                                tilte: 'Cerveja',
                                icon: Icons.sports_bar_rounded,
                                page: const Category(
                                  category: 'cerveja',
                                  title: 'Cervejas',
                                ),
                              ),
                              CategoryButton(
                                tilte: 'Vodka',
                                icon: Icons.bubble_chart_outlined,
                                page: const Category(
                                  category: 'vodka',
                                  title: 'Vodkas',
                                ),
                              ),
                              CategoryButton(
                                tilte: 'Soda',
                                icon: Icons.local_drink_outlined,
                                page: const Category(
                                  category: 'refrigerante',
                                  title: 'Refrigerantes',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryButton(
                                tilte: 'Vinho',
                                icon: Icons.wine_bar,
                                page: const Category(
                                  category: 'vinho',
                                  title: 'Vinhos',
                                ),
                              ),
                              CategoryButton(
                                tilte: 'Suco',
                                icon: Icons.apple,
                                page: const Category(
                                  category: 'suco',
                                  title: 'Sucos',
                                ),
                              ),
                              CategoryButton(
                                tilte: 'Whisky',
                                icon: Icons.wine_bar_outlined,
                                page: const Category(
                                  category: 'whisky',
                                  title: 'Whiskys',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: FutureBuilder<List<Produto>>(
                          future: getProducts(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
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
                                  'Nenhum produto em destaque.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            } else {
                              return SizedBox(
                                height: Measures.getHeight(context) - 500,
                                child: ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    Produto produto = snapshot.data![index];
                                    return ProductCard(
                                      produto: produto,
                                    );
                                  },
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
