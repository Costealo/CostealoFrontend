import 'package:flutter/material.dart';
import '../../theme/costealo_theme.dart';
import '../../widgets/section_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 24),
      child: SectionCard(
        title: '',
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 💚 Columna izquierda: avatar + campos cortos
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Perfil del usuario',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 48,
                        backgroundColor:
                            CostealoColors.cardBackground.withOpacity(0.8),
                        child: Icon(
                          Icons.person,
                          size: 48,
                          color: CostealoColors.iconMuted,
                        ),
                      ),
                      const SizedBox(width: 24),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                        label: const Text('Editar'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  _ProfileField(label: 'Cantidad'),
                  const SizedBox(height: 16),
                  _ProfileField(label: 'Peso total'),
                  const SizedBox(height: 16),
                  _ProfileField(label: 'Cantidad y unidad'),
                  const SizedBox(height: 24),
                ],
              ),
            ),

            const SizedBox(width: 32),

            // 💚 Columna derecha: formulario
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Perfil del usuario',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 24),
                  _ProfileField(label: 'Nombre'),
                  const SizedBox(height: 16),
                  _ProfileField(label: 'Correo electrónico'),
                  const SizedBox(height: 16),
                  _ProfileField(label: 'Contraseña', obscure: true),
                  const SizedBox(height: 16),
                  _ProfileField(label: 'Organización'),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Cambiar método de pago'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileField extends StatelessWidget {
  final String label;
  final bool obscure;

  const _ProfileField({
    required this.label,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}

