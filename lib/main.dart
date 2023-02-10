import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 37, 34, 29),
          appBar: AppBar(
            leading: Image.asset("assets/logo1.png"),
            backgroundColor: Color.fromARGB(255, 244, 243, 242),
            title: Text(
              'Türkiye Son Depremler',
              style: GoogleFonts.anton(
                textStyle: Theme.of(context).textTheme.headline5,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          body: HomePage()),
    );
  }
}
