// lib/screens/home/home_dashboard_screen.dart
import 'package:flutter/material.dart';

import '../../theme/costealo_theme.dart';
import '../../widgets/section_card.dart';

class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Por ahora datos de ejemplo, luego se conectan a SheetService
    final borradores = [
      'Tortas personalizadas',
      'Empanadas salteñas',
      'Postres fríos',
      'Cafetería básica',
      'Menú ejecutivo 1',
      'Brunch domingo',
    ];

    final recientes = [
      'Menú ejecutivo julio',
      'Boxes brunch sábado',
      'Promo 2x1 finde',
      'Costos combos familiares',
      'Planilla fiestas patrias',
      'Especial navidad',
    ];

    return Container(
      color: CostealoColors.babyGreen,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionCard(
                title: 'Borradores',
                child: _SheetGrid(titles: borradores),
              ),
              const SizedBox(height: 24),
              SectionCard(
                title: 'Más recientes',
                child: _SheetGrid(titles: recientes),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SheetGrid extends StatelessWidget {
  final List<String> titles;

  const _SheetGrid({required this.titles});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = 1;
        if (constraints.maxWidth > 1100) {
          crossAxisCount = 4;
        } else if (constraints.maxWidth > 800) {
          crossAxisCount = 3;
        } else if (constraints.maxWidth > 500) {
          crossAxisCount = 2;
        }

        return GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: 4 / 3,
          children:
              titles.map((title) => _SheetCard(title: title)).toList(),
        );
      },
    );
  }
}

class _SheetCard extends StatelessWidget {
  final String title;

  const _SheetCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Luego aquí abrimos la planilla real
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Abrir planilla "$title" (próximamente)'),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              offset: const Offset(0, 4),
              color: Colors.black.withOpacity(0.06),
            ),
          ],
          border: Border.all(
            color: Colors.grey.shade300,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Planilla',
                  style:
                      Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: CostealoColors.textSoft,
                          ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: CostealoColors.textSoft,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
