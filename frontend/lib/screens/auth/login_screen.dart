import 'package:flutter/material.dart';
import '../../theme/costealo_theme.dart';
import '../../widgets/section_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      padding: const EdgeInsets.all(32),
      title: '',
      child: Row(
        children: [
          Expanded(
            child: _LoginColumn(
              title: 'Proveedor',
              buttonText: 'Iniciar sesión',
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: _LoginColumn(
              title: 'Empresa',
              buttonText: 'Registrarse',
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginColumn extends StatelessWidget {
  final String title;
  final String buttonText;

  const _LoginColumn({
    required this.title,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CostealoColors.cardSoft,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: CostealoColors.text,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          const _AuthField(label: 'Correo electrónico'),
          const _AuthField(label: 'Contraseña', obscure: true),
          const Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CostealoColors.primaryDark,
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(buttonText),
            ),
          ),
        ],
      ),
    );
  }
}

class _AuthField extends StatelessWidget {
  final String label;
  final bool obscure;

  const _AuthField({
    required this.label,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              color: CostealoColors.textSoft,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 4),
          TextField(
            obscureText: obscure,
          ),
        ],
      ),
    );
  }
}
