import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICaculator());
}

class BMICaculator extends StatelessWidget {
  const BMICaculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
          appBarTheme: const AppBarTheme(color: Color(0xff0A0D22)),
          scaffoldBackgroundColor: const Color(0xff090C21),
          floatingActionButtonTheme:
              const FloatingActionButtonThemeData(backgroundColor: Colors.red),
          bottomNavigationBarTheme:
              const BottomNavigationBarThemeData(backgroundColor: Colors.red)),
      home: const InputPage(),
    );
  }
}
