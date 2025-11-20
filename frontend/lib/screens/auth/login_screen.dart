import 'package:flutter/material.dart';
import '../../theme/costealo_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CostealoColors.primaryLight,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 520),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                blurRadius: 16,
                offset: const Offset(0, 10),
                color: Colors.black.withOpacity(0.06),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                '¡Bienvenido/a!',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: CostealoColors.primaryDark,
                ),
              ),
              const SizedBox(height: 32),

              // Correo
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Correo electrónico:',
                  style: TextStyle(
                    fontSize: 14,
                    color: CostealoColors.text,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'ejemplo@correo.com',
                ),
              ),
              const SizedBox(height: 20),

              // Contraseña
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Contraseña:',
                  style: TextStyle(
                    fontSize: 14,
                    color: CostealoColors.text,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '••••••••',
                ),
              ),

              const SizedBox(height: 28),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: const Text('Iniciar sesión'),
                ),
              ),
              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('¿No tienes una cuenta? '),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: const Text(
                      'Créate una',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: CostealoColors.primaryDark,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
