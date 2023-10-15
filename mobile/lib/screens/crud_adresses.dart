import 'package:flutter/material.dart';
import 'package:mobile/components/UI/standard_dropdown.dart';
import 'package:mobile/components/UI/standard_text_field.dart';

import 'package:mobile/components/simple_topbar.dart';

class CrudAdresses extends StatefulWidget {
  CrudAdresses({
    super.key,
    required this.pageTitle,
  });

  final String pageTitle;

  State<CrudAdresses> createState() => _CrudAdresses();
}

class _CrudAdresses extends State<CrudAdresses> {
  final _paisController = TextEditingController();
  final _estadoController = TextEditingController();
  final _cidadeController = TextEditingController();
  final _bairroController = TextEditingController();
  final _ruaController = TextEditingController();
  final _numeroController = TextEditingController();
  final _cepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: SimpleTopbar(title: widget.pageTitle),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child:  Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: StandardDropdown(
                        title: 'País', 
                        controller: _paisController, 
                        options: const ['Brasil'], 
                        icon: Icons.my_location_outlined,
                        setSelect: (){},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: StandardDropdown(
                        title: 'Unidade Federal', 
                        controller: _estadoController, 
                        options: const ['São Paulo'], 
                        icon: Icons.place_outlined,
                        setSelect: (){},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: StandardDropdown(
                        title: 'Cidade', 
                        controller: _cidadeController, 
                        options: const ['Campinas', 'Hortolándia', 'Monte Mor', 'Indaiatuba', 'Valinhos'], 
                        icon: Icons.location_city,
                        setSelect: (){},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: StandardTextField(
                        controller: _bairroController,
                        labelText: 'Bairro',
                        icon: Icons.markunread_mailbox_outlined,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: StandardTextField(
                        controller: _ruaController,
                        labelText: 'Rua',
                        icon: Icons.confirmation_number_outlined,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: StandardTextField(
                        controller: _numeroController,
                        labelText: 'Número',
                        textInputType: TextInputType.number,
                        icon: Icons.numbers,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      child: StandardTextField(
                        controller: _cepController,
                        labelText: 'CEP',
                        textInputType: TextInputType.number,
                        icon: Icons.home_work_rounded,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(233, 212, 26, 1),
            ),
          ),
          child: const Text(
            'Salvar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}