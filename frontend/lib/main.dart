import 'package:flutter/material.dart';
import 'theme/costealo_theme.dart';
import 'screens/auth/welcome_screen.dart';
import 'screens/auth/login_screen.dart';
import 'screens/auth/register_screen.dart';
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
      theme: CostealoTheme.lightTheme,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (_) => const WelcomeScreen(),
        '/login': (_) => const LoginScreen(),
        '/register': (_) => const RegisterScreen(),
        '/home': (_) => const HomeShell(),
      },
    );
  }
}
