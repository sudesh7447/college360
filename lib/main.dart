import 'package:college360/screens/signin.dart';
import 'package:college360/widgets/input_filed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.urbanistTextTheme(
          (Theme.of(context).textTheme).copyWith(),
        ),
      ),
      home: signInScreen(),
    );
  }
}
