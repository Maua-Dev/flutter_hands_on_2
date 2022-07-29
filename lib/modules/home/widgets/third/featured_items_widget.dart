import 'package:flutter/material.dart';
import 'package:flutter_hands_on_2/shared/themes/app_text_styles.dart';

class FeaturedItemsWidget extends StatelessWidget {
  final String nome;
  final double preco;
  final String image;
  const FeaturedItemsWidget(
      {Key? key, required this.nome, required this.preco, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, right: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5)),
                child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxHeight: 50, maxWidth: 50),
                    child: Image.asset(image)),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: AppTextStyles.h3,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '\$$preco',
                    style: AppTextStyles.h3.copyWith(color: Colors.red),
                  )
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(100)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
