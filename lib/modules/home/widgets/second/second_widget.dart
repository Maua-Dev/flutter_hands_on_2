import 'package:flutter/material.dart';
import 'package:flutter_hands_on_2/modules/home/widgets/second/shop_items_widget.dart';
import 'package:flutter_hands_on_2/shared/models/items.dart';
import 'package:flutter_hands_on_2/shared/themes/app_text_styles.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Items> items = [
      Items(
          nome: 'Hamburguer',
          preco: 21,
          imagem: 'assets/images/hamburguer.png'),
      Items(nome: 'Fritas', preco: 10, imagem: 'assets/images/hamburguer.png'),
      Items(nome: 'Hot Dog', preco: 14, imagem: 'assets/images/hamburguer.png'),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recommended',
            style: AppTextStyles.h2,
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ShopItemsWidget(
                  nome: items[index].nome,
                  preco: items[index].preco,
                  image: items[index].imagem,
                );
              },
              itemCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
