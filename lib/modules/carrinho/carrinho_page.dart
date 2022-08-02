import 'package:flutter/material.dart';

class CarrinhoPage extends StatelessWidget {
  final String image;
  final String nome;
  final int quantidade;
  final double precoFinal;
  const CarrinhoPage(
      {Key? key,
      required this.image,
      required this.nome,
      required this.quantidade,
      required this.precoFinal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const Text('Seu Carrinho:'),
              const SizedBox(
                height: 32,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                        constraints:
                            const BoxConstraints(maxHeight: 50, maxWidth: 50),
                        child: Image.asset(image)),
                    Text(nome),
                    Text(quantidade.toString()),
                    Text(precoFinal.toString())
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
