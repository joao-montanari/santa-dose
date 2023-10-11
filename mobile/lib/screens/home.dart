import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile/components/UI/category_button.dart';
import 'package:mobile/components/UI/standard_text_field.dart';
import 'package:mobile/components/topbar.dart';
import 'package:mobile/components/bottom_bar.dart';

class Home extends StatefulWidget {
  Home({
    super.key,
  });

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  final _searchController = TextEditingController();

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
                              ),
                              CategoryButton(
                                tilte: 'Vodka',
                                icon: Icons.bubble_chart_outlined,
                              ),
                              CategoryButton(
                                tilte: 'Soda',
                                icon: Icons.local_drink_outlined,
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
                                tilte: 'Vinhos',
                                icon: Icons.wine_bar,
                              ),
                              CategoryButton(
                                tilte: 'Suco',
                                icon: Icons.apple,
                              ),
                              CategoryButton(
                                tilte: 'Whisky',
                                icon: Icons.wine_bar_outlined,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
