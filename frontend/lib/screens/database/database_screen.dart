import 'package:flutter/material.dart';
import '../../theme/costealo_theme.dart';
import '../../widgets/section_card.dart';

class DatabaseScreen extends StatelessWidget {
  const DatabaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      padding: const EdgeInsets.all(24),
      title: '',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Base de datos',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: CostealoColors.text,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: _DatabaseColumn(
                    title: 'Borradores',
                    items: [
                      'Nombre de base de datos 1\nFecha de última edición: dd/mm/yyyy',
                      'Nombre de base de datos 2\nFecha de última edición: dd/mm/yyyy',
                    ],
                    showActions: false,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: _DatabaseColumn(
                    title: 'Más recientes',
                    items: [
                      'Nombre de base de datos 1\nFecha publicación: dd/mm/yyyy\nÚltima actualización: dd/mm/yyyy',
                    ],
                    showActions: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DatabaseColumn extends StatelessWidget {
  final String title;
  final List<String> items;
  final bool showActions;

  const _DatabaseColumn({
    required this.title,
    required this.items,
    this.showActions = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CostealoColors.cardSoft,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: CostealoColors.text,
            ),
          ),
          const SizedBox(height: 12),
          ...items.map(
            (text) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Container(
                decoration: BoxDecoration(
                  color: CostealoColors.card,
                  borderRadius: BorderRadius.circular(18),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 13,
                    color: CostealoColors.textSoft,
                  ),
                ),
              ),
            ),
          ),
          if (showActions) ...[
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: const Text(
                      'Exportar a…',
                      style: TextStyle(
                        color: CostealoColors.textSoft,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CostealoColors.primary,
                    foregroundColor: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Publicar'),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
