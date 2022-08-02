import 'package:flutter/material.dart';

import '../../../../shared/themes/app_text_styles.dart';
import '../../../carrinho/carrinho_page.dart';

class SecondSection extends StatefulWidget {
  final double valor;
  final String image;
  final String nome;
  const SecondSection(
      {Key? key, required this.valor, required this.image, required this.nome})
      : super(key: key);

  @override
  State<SecondSection> createState() => _SecondSectionState();
}

class _SecondSectionState extends State<SecondSection> {
  int quantidade = 1;
  double preco = 0;

  @override
  void initState() {
    super.initState();
    preco = widget.valor;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${preco.toString()}',
                style: AppTextStyles.h2.copyWith(fontSize: 36),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10))),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  quantidade < 1 ? 0 : quantidade -= 1;
                                  preco = widget.valor * quantidade;
                                });
                              },
                              icon:
                                  const Icon(Icons.remove, color: Colors.red)),
                          Text(
                            quantidade.toString(),
                            style: AppTextStyles.h3.copyWith(color: Colors.red),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  quantidade += 1;
                                  preco = widget.valor * quantidade;
                                });
                              },
                              icon: const Icon(Icons.add, color: Colors.red)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 32,
                    ),
                    Text(
                      'Add to cart',
                      style: AppTextStyles.h3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CarrinhoPage(
                            image: widget.image,
                            precoFinal: preco,
                            nome: widget.nome,
                            quantidade: quantidade),
                      ));
                },
                child: Text(
                  'Finalizar Compra',
                  style: AppTextStyles.h3.copyWith(color: Colors.red),
                )),
          ),
        ],
      ),
    );
  }
}
