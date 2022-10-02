import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_bill/grouppage.dart';
import 'package:split_bill/homepage.dart';
import 'package:split_bill/intro_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.robotoTextTheme(),
        ),
        home: Introduction());
  }
}
