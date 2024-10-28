import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:level_4/presentation/home/home.dart';
import 'core/core.dart';
import 'presentation/auth/pages/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}
