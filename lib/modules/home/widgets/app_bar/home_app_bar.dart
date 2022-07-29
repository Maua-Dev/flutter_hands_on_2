import 'package:flutter/material.dart';
import 'package:flutter_hands_on_2/modules/home/widgets/app_bar/person_icon.dart';
import 'package:flutter_hands_on_2/shared/themes/app_colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: AppColors.brandingGrey),
      actions: const [
        PersonIcon(),
      ],
    );
  }
}
