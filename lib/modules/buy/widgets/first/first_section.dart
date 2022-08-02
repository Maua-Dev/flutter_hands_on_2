import 'package:flutter/material.dart';

import '../../../../shared/themes/app_text_styles.dart';
import 'custom_button_widget.dart';

class FirstSection extends StatefulWidget {
  final String name;
  final String image;
  const FirstSection({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  State<FirstSection> createState() => _FirstSectionState();
}

class _FirstSectionState extends State<FirstSection> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              Text(
                widget.name,
                style: AppTextStyles.h1,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: 300,
                      maxWidth: MediaQuery.of(context).size.width / 2),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButtonWidget(
                      icon: favorite ? Icons.favorite : Icons.favorite_outline,
                      onPressed: () {
                        setState(() {
                          favorite = !favorite;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButtonWidget(
                      icon: Icons.share,
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
