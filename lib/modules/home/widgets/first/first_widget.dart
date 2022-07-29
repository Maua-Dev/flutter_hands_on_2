import 'package:flutter/material.dart';
import 'package:flutter_hands_on_2/shared/themes/app_colors.dart';
import 'package:flutter_hands_on_2/shared/themes/app_text_styles.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'SEARCH FOR RECIPES',
            style: AppTextStyles.h1,
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: AppColors.brandingGrey,
                borderRadius: BorderRadius.circular(20)),
            child: TextField(
              style: TextStyle(fontSize: 18, color: AppColors.grey),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: const TextStyle(fontSize: 18, color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.grey,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
