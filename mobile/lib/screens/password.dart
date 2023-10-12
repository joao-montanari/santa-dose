import 'package:flutter/material.dart';
import 'package:mobile/components/UI/standard_text_field.dart';
import 'package:mobile/components/simple_topbar.dart';

class Password extends StatefulWidget {
  const Password({
    super.key,
  });

  @override
  State<Password> createState() => _Password();
}

class _Password extends State<Password> {
  final _passwordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmNewPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: const SimpleTopbar(title: 'Alterar senha'),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Icon(
                        Icons.vpn_key_outlined,
                        color: Colors.yellow,
                        size: 120,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        bottom: 10,
                        left: 20,
                        right: 20,
                      ),
                      child: StandardTextField(
                        controller: _passwordController,
                        labelText: 'Senha atual',
                        icon: Icons.key,
                        passwordMode: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 14,
                        bottom: 10,
                        left: 20,
                        right: 20,
                      ),
                      child: StandardTextField(
                        controller: _newPasswordController,
                        labelText: 'Nova senha',
                        icon: Icons.lock_open_outlined,
                        passwordMode: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 14,
                        bottom: 10,
                        left: 20,
                        right: 20,
                      ),
                      child: StandardTextField(
                        controller: _confirmNewPasswordController,
                        labelText: 'Confirme a nova senha',
                        icon: Icons.lock_outline,
                        passwordMode: true,
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
          vertical: 25,
          horizontal: 20,
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(233, 212, 26, 1),
            ),
          ),
          child: const Text(
            'Salvar nova senha',
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
