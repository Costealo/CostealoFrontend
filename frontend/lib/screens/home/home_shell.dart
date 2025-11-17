import 'package:flutter/material.dart';
import '../../theme/costealo_theme.dart';
import '../../widgets/sidebar_menu.dart';
import '../../widgets/costealo_appbar.dart';
import '../../widgets/section_card.dart';
import '../profile/profile_screen.dart';
import '../database/database_screen.dart';
import '../sheets/summary_screen.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  SidebarItem _selected = SidebarItem.perfil;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CostealoColors.primaryLight,
      body: Row(
        children: [
          SidebarMenu(
            selected: _selected,
            onItemSelected: (item) {
              setState(() {
                _selected = item;
              });
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  CostealoAppBar(
                    title: _titleForItem(_selected),
                    hintSearch: _hintForItem(_selected),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: _contentForItem(_selected),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _titleForItem(SidebarItem item) {
    switch (item) {
      case SidebarItem.perfil:
        return 'Perfil del usuario';
      case SidebarItem.baseDatos:
        return 'Base de datos';
      case SidebarItem.resumen:
        return 'Resumen de planillas';
      case SidebarItem.planillas:
        return 'Planillas';
      case SidebarItem.borradores:
        return 'Borradores';
    }
  }

  String _hintForItem(SidebarItem item) {
    if (item == SidebarItem.baseDatos) return 'Buscador';
    return 'Buscar por nombre';
  }

  Widget _contentForItem(SidebarItem item) {
    switch (item) {
      case SidebarItem.perfil:
        return const ProfileScreen();
      case SidebarItem.baseDatos:
        return const DatabaseScreen();
      case SidebarItem.resumen:
        return const SummaryScreen();
      case SidebarItem.planillas:
      case SidebarItem.borradores:
        return Center(
          child: SectionCard(
            child: const Text(
              'Aquí irán las pantallas de planillas y borradores.',
            ),
          ),
        );
    }
  }
}
