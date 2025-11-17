import 'package:flutter/material.dart';
import 'theme/costealo_theme.dart';
import 'screens/home/home_shell.dart';

void main() {
  runApp(const CostealoApp());
}

class CostealoApp extends StatelessWidget {
  const CostealoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Costealo',
      debugShowCheckedModeBanner: false,
      theme: buildCostealoTheme(),
      home: const HomeShell(),
    );
  }
}
