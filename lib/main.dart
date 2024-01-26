import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/core/constants/theme.dart';
import 'package:todo/view/first_open/first_open.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Color.fromARGB(198, 0, 51, 102),
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TODO LIST APP',
      // put the home page as your main working screen
      home: const FirstOpen(),
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(),
        fontFamily: GoogleFonts.roboto().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ThemeColors.primary,
          secondary: ThemeColors.secondary,
          outline: const Color.fromARGB(198, 0, 51, 102),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          prefixIconColor: Color(0xFF003366),
          outlineBorder: BorderSide(
            width: .8,
            color: Color.fromARGB(198, 0, 51, 102),
          ),
          hintStyle: TextStyle(
            color: Color.fromARGB(198, 0, 51, 102),
          ),
        ),
      ),
    );
  }
}
