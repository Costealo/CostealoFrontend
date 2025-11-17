import 'package:flutter/material.dart';
import '../../widgets/section_card.dart';
import '../../theme/costealo_theme.dart';

class NewSheetScreen extends StatelessWidget {
  const NewSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Nueva planilla',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: CostealoColors.text,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Aquí luego armamos la lista de ingredientes, cantidades y costos.',
            style: TextStyle(
              color: CostealoColors.textSoft,
            ),
          ),
        ],
      ),
    );
  }
}
