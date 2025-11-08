import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const FinanceMateApp());
}

class FinanceMateApp extends StatelessWidget {
  const FinanceMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Mate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF001F3F), // Navy blue
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
