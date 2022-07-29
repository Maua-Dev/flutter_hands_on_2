import 'package:flutter/material.dart';
import 'package:flutter_hands_on_2/shared/themes/app_colors.dart';
import 'package:flutter_hands_on_2/shared/themes/app_text_styles.dart';

class ShopItemsWidget extends StatelessWidget {
  final String nome;
  final double preco;
  final String image;
  const ShopItemsWidget(
      {Key? key, required this.nome, required this.preco, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 200),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.orange, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxHeight: 50, maxWidth: 50),
                    child: Image.asset(image)),
              ),
              Column(
                children: [
                  Text(
                    nome,
                    style: AppTextStyles.h2.copyWith(
                        color: AppColors.brandingOrange,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    '\$$preco',
                    style: AppTextStyles.h2.copyWith(
                        color: AppColors.brandingOrange,
                        fontWeight: FontWeight.normal),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
