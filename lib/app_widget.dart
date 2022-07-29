import 'package:flutter/material.dart';
import 'package:flutter_hands_on_2/modules/home/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      title: 'Hands On 2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.montserratTextTheme(),
          appBarTheme:
              const AppBarTheme(backgroundColor: Colors.white, elevation: 0)),
    );
  }
}
