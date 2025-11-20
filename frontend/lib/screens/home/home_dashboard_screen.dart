import 'package:flutter/material.dart';
import '../../widgets/section_card.dart';
import '../../theme/costealo_theme.dart';

class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionCard(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Bienvenida a Costealo',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: CostealoColors.text,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Centraliza tus planillas, calcula costos y mira el resumen de tu producción en un solo lugar.',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SectionCard(
            child: Row(
              children: const [
                Icon(Icons.auto_graph, color: CostealoColors.primary),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                      'Aquí luego irán tus gráficos de costos, materias primas y análisis.'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
