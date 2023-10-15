import 'package:flutter/material.dart';
import 'package:mobile/components/UI/card/adresses_card.dart';
import 'package:mobile/components/simple_topbar.dart';
import 'package:mobile/models/address.dart';
import 'package:mobile/screens/crud_adresses.dart';

class Adresses extends StatefulWidget {
  Adresses({super.key});

  @override
  State<Adresses> createState() => _Adresses();
}

class _Adresses extends State<Adresses> {
  List<Endereco> adresses = [
    Endereco(
      pais: 'Brasil',
      estado: 'PI',
      cidade: 'Teresina',
      bairro: 'Porenquanto',
      rua: 'Rua Santinha Vaz',
      numero: 5,
      cep: '64002-680',
    ),
    Endereco(
      pais: 'Brasil',
      estado: 'PE',
      cidade: 'Vitória de Santo Antão',
      bairro: 'Redenção',
      rua: 'Rua S',
      numero: 4,
      cep: '55612-220',
    ),
    Endereco(
      pais: 'Brasil',
      estado: 'CE',
      cidade: 'Fortaleza',
      bairro: 'Alto da Balança',
      rua: 'Travessa Capitão Aragão',
      numero: 3,
      cep: '60851-590',
    ),
    Endereco(
      pais: 'Brasil',
      estado: 'PB',
      cidade: 'João Pessoa',
      bairro: 'Funcionários',
      rua: 'Rua Trajano Lopes de Sousa',
      numero: 9,
      cep: '58079-530',
    ),
  ];

  Future<List<Endereco>> getAdresses() {
    return Future(() => adresses);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: const SimpleTopbar(title: 'Endereços salvos'),
      body: FutureBuilder<List<Endereco>>(
        future: getAdresses(),
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
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Endereco endereco = snapshot.data![index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CardAdresses(
                    endereco: endereco,
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CrudAdresses(
                pageTitle: 'Registrar endereço',
              ),
            ),
          );
        },
        backgroundColor: Colors.yellow.shade600,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
