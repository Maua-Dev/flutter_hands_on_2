import 'package:flutter/material.dart';
import 'package:flutter_hands_on_2/modules/home/widgets/app_bar/home_app_bar.dart';
import 'package:flutter_hands_on_2/modules/home/widgets/third/third_widget.dart';

import '../widgets/first/first_widget.dart';
import '../widgets/second/second_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 56), child: HomeAppBar()),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: ListView(
          children: const [
            FirstWidget(),
            SecondWidget(),
            ThirdWidget(),
          ],
        ),
      ),
    );
  }
}
