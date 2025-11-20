import 'package:flutter/material.dart';
import '../../widgets/section_card.dart';
import '../../theme/costealo_theme.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SectionCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Resumen de planillas',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: CostealoColors.text,
              ),
            ),
            SizedBox(height: 16),
            Text('Aquí aparecerán tus planillas con sus costos totales.'),
          ],
        ),
      ),
    );
  }
}
