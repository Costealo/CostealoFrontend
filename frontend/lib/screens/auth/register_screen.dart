import 'package:flutter/material.dart';
import '../../theme/costealo_theme.dart';
import '../../widgets/section_card.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      padding: const EdgeInsets.all(24),
      title: '',
      child: Row(
        children: const [
          Expanded(child: _StepOne()),
          SizedBox(width: 24),
          Expanded(child: _StepTwo()),
        ],
      ),
    );
  }
}

class _StepOne extends StatelessWidget {
  const _StepOne();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Paso 1 de 2: Regístrate',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: CostealoColors.text,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 12),
        const _Field(label: 'Nombre'),
        const _Field(label: 'Correo electrónico'),
        const _Field(label: 'Contraseña', obscure: true),
        const _Field(label: 'Verificar contraseña', obscure: true),
        const _Field(label: 'Organización'),
      ],
    );
  }
}

class _StepTwo extends StatelessWidget {
  const _StepTwo();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Paso 2 de 2: Método de pago',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: CostealoColors.text,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 12),
        const _Field(label: 'Subscripción'),
        const _Field(label: 'Tipo de pago'),
        const _Field(label: 'Últimos 4 dígitos'),
        const _Field(label: 'Fecha de vencimiento'),
        const _Field(label: 'Código de seguridad'),
        const Spacer(),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: CostealoColors.primary,
              foregroundColor: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: const Text('¡Comenzar ya!'),
          ),
        ),
      ],
    );
  }
}

class _Field extends StatelessWidget {
  final String label;
  final bool obscure;

  const _Field({
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
