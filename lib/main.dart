import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swan_app/screens/home_screen.dart';

void main() {
  runApp(const SwanApp());
}

class SwanApp extends StatelessWidget {
  const SwanApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.rubikTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
