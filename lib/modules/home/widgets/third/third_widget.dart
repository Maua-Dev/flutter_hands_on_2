import 'package:flutter/cupertino.dart';

import '../../../../shared/models/items.dart';
import '../../../../shared/themes/app_text_styles.dart';
import 'featured_items_widget.dart';

class ThirdWidget extends StatelessWidget {
  const ThirdWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Items> items = [
      Items(
          nome: 'Delicious Hot Dog',
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
            'Featured',
            style: AppTextStyles.h2,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return FeaturedItemsWidget(
                  nome: items[index].nome,
                  preco: items[index].preco,
                  image: items[index].imagem,
                );
              },
              itemCount: 2,
            ),
          )
        ],
      ),
    );
  }
}
