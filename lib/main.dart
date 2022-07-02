import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'insta_Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.blue,
        primaryColor: Colors.black,
        primaryIconTheme: const IconThemeData(color: Colors.black),
        primaryTextTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: InstaHome(),
    );
  }
}
