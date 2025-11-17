import 'package:flutter/material.dart';
import '../theme/costealo_theme.dart';

enum SidebarItem {
  borradores,
  planillas,
  resumen,
  baseDatos,
  perfil,
}

class SidebarMenu extends StatelessWidget {
  final SidebarItem selected;
  final ValueChanged<SidebarItem> onItemSelected;

  const SidebarMenu({
    super.key,
    required this.selected,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      decoration: const BoxDecoration(
        color: CostealoColors.primary,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          const _Logo(),
          const SizedBox(height: 32),
          _SidebarButton(
            icon: Icons.article_outlined,
            label: 'Borradores',
            isSelected: selected == SidebarItem.borradores,
            onTap: () => onItemSelected(SidebarItem.borradores),
          ),
          _SidebarButton(
            icon: Icons.table_rows_outlined,
            label: 'Planillas',
            isSelected: selected == SidebarItem.planillas,
            onTap: () => onItemSelected(SidebarItem.planillas),
          ),
          _SidebarButton(
            icon: Icons.view_list_outlined,
            label: 'Resumen',
            isSelected: selected == SidebarItem.resumen,
            onTap: () => onItemSelected(SidebarItem.resumen),
          ),
          _SidebarButton(
            icon: Icons.storage_outlined,
            label: 'Base de datos',
            isSelected: selected == SidebarItem.baseDatos,
            onTap: () => onItemSelected(SidebarItem.baseDatos),
          ),
          const Spacer(),
          _SidebarButton(
            icon: Icons.person_outline,
            label: 'Perfil',
            isSelected: selected == SidebarItem.perfil,
            onTap: () => onItemSelected(SidebarItem.perfil),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: CostealoColors.primaryDark,
      child: const Text(
        'C',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _SidebarButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _SidebarButton({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 64,
          height: 56,
          decoration: BoxDecoration(
            color: isSelected
                ? CostealoColors.primaryDark.withOpacity(0.2)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
