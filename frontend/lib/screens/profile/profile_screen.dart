import 'package:flutter/material.dart';
import '../../theme/costealo_theme.dart';
import '../../widgets/section_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      padding: const EdgeInsets.all(24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Columna izquierda
          Expanded(
            flex: 2,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 48,
                  backgroundColor: CostealoColors.cardSoft,
                  child: Icon(
                    Icons.person,
                    size: 56,
                    color: CostealoColors.textSoft,
                  ),
                ),
                const SizedBox(height: 12),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.edit, size: 18),
                  label: const Text('Editar'),
                ),
                const SizedBox(height: 24),
                _ProfileField(label: 'Cantidad', value: '—'),
                _ProfileField(label: 'Peso total', value: '—'),
                _ProfileField(label: 'Cantidad y unidad', value: '—'),
                _ProfileField(label: 'Códigos adicionales', value: 'XXXX XXXX'),
              ],
            ),
          ),
          const SizedBox(width: 24),
          // Columna derecha
          const Expanded(
            flex: 3,
            child: _RightProfileForm(),
          ),
        ],
      ),
    );
  }
}

class _ProfileField extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileField({
    required this.label,
    required this.value,
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
          Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              value,
              style: const TextStyle(
                color: CostealoColors.text,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RightProfileForm extends StatelessWidget {
  const _RightProfileForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Perfil del usuario',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: CostealoColors.text,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 16),
        const _ProfileInput(label: 'Nombre'),
        const _ProfileInput(label: 'Correo electrónico'),
        const _ProfileInput(label: 'Contraseña', obscure: true),
        const _ProfileInput(label: 'Organización'),
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: CostealoColors.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: const Text('Cambiar método de pago'),
          ),
        ),
      ],
    );
  }
}

class _ProfileInput extends StatelessWidget {
  final String label;
  final bool obscure;

  const _ProfileInput({
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
