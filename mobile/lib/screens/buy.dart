import 'package:flutter/material.dart';
import 'package:mobile/components/UI/standard_dropdown.dart';
import 'package:mobile/components/simple_topbar.dart';

class Buy extends StatefulWidget {
  const Buy({
    super.key,
  });

  @override
  State<Buy> createState() => _Buy();
}

class _Buy extends State<Buy> {
  final _enderecoController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(23, 28, 33, 1000),
      appBar: const SimpleTopbar(title: 'Sua compra'),
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
                      padding: EdgeInsets.only(bottom: 40),
                      child: Icon(
                        Icons.store_outlined,
                        color: Colors.yellow,
                        size: 180,  
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.attach_money_outlined,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ),
                              Text(
                                'Valor total:',
                                style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '1.000,00',
                            style: TextStyle(
                              color: Colors.grey.shade200,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.person_outline_rounded,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ),
                              Text(
                                'Cliente:',
                                style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'João Montanari',
                            style: TextStyle(
                              color: Colors.grey.shade200,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.calendar_month,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ),
                              Text(
                                'Data:',
                                style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '14/10/2023',
                            style: TextStyle(
                              color: Colors.grey.shade200,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(
                                  Icons.credit_card_rounded,
                                  color: Colors.yellow,
                                  size: 30,
                                ),
                              ),
                              Text(
                                'Pagamento:',
                                style: TextStyle(
                                  color: Colors.grey.shade200,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Informação',
                            style: TextStyle(
                              color: Colors.grey.shade200,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        top: 25,
                      ),
                      child: StandardDropdown(
                        title: 'Endereço de entrega', 
                        controller: _enderecoController, 
                        options: ['Rua Rodolfo Favalli - 05', 'Prestes Maia'], 
                        icon: Icons.place_outlined,
                        setSelect: (){},
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
            'Finalizar',
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