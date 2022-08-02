import 'package:flutter/material.dart';

import '../../home/widgets/app_bar/home_app_bar.dart';
import '../widgets/first/first_section.dart';
import '../widgets/second/second_section.dart';

class BuyPage extends StatelessWidget {
  final String name;
  final double valor;
  final String image;
  const BuyPage(
      {Key? key, required this.name, required this.valor, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 56), child: HomeAppBar()),
      drawer: const Drawer(),
      body: ListView(
        children: [
          FirstSection(name: name, image: image),
          SecondSection(
            valor: valor,
            image: image,
            nome: name,
          ),
        ],
      ),
    );
  }
}
