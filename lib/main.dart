import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipesappg7/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
    ),
  );
}
