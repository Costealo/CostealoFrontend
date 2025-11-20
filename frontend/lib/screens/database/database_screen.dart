import 'package:flutter/material.dart';
import '../../widgets/section_card.dart';
import '../../theme/costealo_theme.dart';

class DatabaseScreen extends StatelessWidget {
  const DatabaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SectionCard(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Base de datos de ingredientes',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: CostealoColors.text,
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  label: const Text('Nuevo ingrediente'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Ingrediente')),
                  DataColumn(label: Text('Unidad')),
                  DataColumn(label: Text('Costo')),
                ],
                rows: const [
                  DataRow(
                    cells: [
                      DataCell(Text('Ejemplo: Harina')),
                      DataCell(Text('kg')),
                      DataCell(Text('15.00')),
                    ],
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
