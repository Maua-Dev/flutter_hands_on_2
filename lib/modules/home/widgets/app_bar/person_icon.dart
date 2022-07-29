import 'package:flutter/material.dart';
import 'package:flutter_hands_on_2/shared/themes/app_colors.dart';

class PersonIcon extends StatelessWidget {
  const PersonIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, right: 16),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.blue[200], borderRadius: BorderRadius.circular(100)),
        child: Center(
            child: Icon(
          Icons.person,
          color: AppColors.grey,
          size: 40,
        )),
      ),
    );
  }
}
