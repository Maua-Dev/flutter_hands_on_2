import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final IconData icon;
  const CustomButtonWidget({Key? key, this.onPressed, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.all(12),
          elevation: 1),
      child: Icon(
        icon,
        color: Colors.red,
        size: 40,
      ),
    );
  }
}
