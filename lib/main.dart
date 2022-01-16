import 'package:doctor_consultan/screens/datail_screen.dart';
import 'package:doctor_consultan/screens/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              GoogleFonts.varelaRoundTextTheme(Theme.of(context).textTheme)),
      home: OnBoardScreen(),
    );
  }
}
