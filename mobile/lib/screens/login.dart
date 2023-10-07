import 'package:flutter/material.dart';
import 'package:mobile/components/simple_topbar.dart';
import 'package:mobile/components/UI/standard_text_field.dart';
import 'package:mobile/screens/home.dart';

class Login extends StatefulWidget {
  Login({
    super.key,
  });

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: const SimpleTopbar(title: 'Entrar'),
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
                      'Entre na sua conta',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        bottom: 15,
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
                        top: 15,
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
