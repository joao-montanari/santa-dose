import 'package:flutter/material.dart';
import 'package:mobile/components/UI/standard_text_field.dart';
import 'package:mobile/components/simple_topbar.dart';
import 'package:mobile/screens/adresses.dart';
import 'package:mobile/screens/password.dart';

class User extends StatefulWidget {
  User({super.key});

  @override
  State<User> createState() => _User();
}

class _User extends State<User> {
  final _nomeController = TextEditingController();
  final _nascimentoController = TextEditingController();
  final _emailController = TextEditingController();
  final _cpfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: const SimpleTopbar(title: 'Seu Perfil'),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 150,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: StandardTextField(
                        controller: _nomeController,
                        labelText: 'Nome',
                        textInputType: TextInputType.text,
                        icon: Icons.abc,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: StandardTextField(
                        controller: _nascimentoController,
                        labelText: 'Data de nascimento',
                        textInputType: TextInputType.number,
                        icon: Icons.calendar_month,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: StandardTextField(
                        controller: _emailController,
                        labelText: 'E-mail',
                        textInputType: TextInputType.emailAddress,
                        icon: Icons.email,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      child: StandardTextField(
                        controller: _cpfController,
                        labelText: 'CPF',
                        textInputType: TextInputType.number,
                        icon: Icons.account_circle_outlined,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, left: 20),
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
                                      builder: (context) => Password(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Senha',
                                  style: TextStyle(
                                      color: Color.fromRGBO(233, 212, 26, 1),
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 10),
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
                                      builder: (context) => Adresses(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Endereço',
                                  style: TextStyle(
                                    color: Color.fromRGBO(233, 212, 26, 1),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
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
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(10, 28, 31, 232),
                      ),
                      side: MaterialStatePropertyAll(
                          BorderSide(width: 1, color: Colors.grey.shade600)),
                    ),
                    child: const Text(
                      'Sair',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
