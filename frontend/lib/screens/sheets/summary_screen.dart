import 'package:flutter/material.dart';
import '../../theme/costealo_theme.dart';
import '../../widgets/section_card.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      padding: const EdgeInsets.all(24),
      title: '',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nombre del producto',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: CostealoColors.text,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              Expanded(child: _SummaryField(label: 'Precio total')),
              SizedBox(width: 12),
              Expanded(child: _SummaryField(label: 'Precio de venta actual')),
              SizedBox(width: 12),
              Expanded(child: _SummaryField(label: 'Margen de ganancia')),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Costos adicionales',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: CostealoColors.text,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              Expanded(child: _SummaryField(label: 'Ingrediente 1')),
              SizedBox(width: 12),
              Expanded(child: _SummaryField(label: 'Premium')),
            ],
          ),
          const Spacer(),
          Row(
            children: [
              ElevatedButton(
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
                child: const Text('Cancelar'),
              ),
              const Spacer(),
              ElevatedButton(
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
                child: const Text('Siguiente'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SummaryField extends StatelessWidget {
  final String label;

  const _SummaryField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const TextField(),
      ],
    );
  }
}
