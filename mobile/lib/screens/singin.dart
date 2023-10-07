import 'package:flutter/material.dart';
import 'package:mobile/components/UI/standard_text_field.dart';
import 'package:mobile/components/simple_topbar.dart';
import 'package:mobile/screens/home.dart';

class SingIn extends StatefulWidget {
  const SingIn({
    super.key,
  });

  @override
  State<SingIn> createState() => _SingIn();
}

class _SingIn extends State<SingIn> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: const SimpleTopbar(title: 'Cadastro'),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Image.asset('assets/logo.png', width: 130),
                    ),
                    const Text(
                      'Crie sua conta',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
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
                        controller: _emailController,
                        labelText: 'E-mail',
                        textInputType: TextInputType.emailAddress,
                        icon: Icons.email,
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
                        controller: _nameController,
                        labelText: 'Nome',
                        icon: Icons.abc,
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
                        controller: _passwordController,
                        labelText: 'Senha',
                        passwordMode: true,
                        icon: Icons.key,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 14,
                        left: 20,
                        right: 20,
                      ),
                      child: StandardTextField(
                        controller: _confirmPasswordController,
                        labelText: 'Confirmar senha',
                        passwordMode: true,
                        icon: Icons.key,
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ]
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 40,
          left: 20,
          right: 20,
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (ctx) => Home(),
              ),
            );
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(233, 212, 26, 1),
            ),
          ),
          child: const Text(
            'Entrar',
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
