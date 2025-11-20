import 'package:flutter/material.dart';

import '../../theme/costealo_theme.dart';
import '../../widgets/sidebar_menu.dart';
import '../../widgets/costealo_appbar.dart';
import '../database/database_screen.dart';
import '../profile/profile_screen.dart';
import '../sheets/new_sheet_screen.dart';
import '../sheets/summary_screen.dart';
import 'home_dashboard_screen.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _selectedIndex = 0;

  String get _title {
    switch (_selectedIndex) {
      case 0:
        return 'Inicio';
      case 1:
        return 'Resumen';
      case 2:
        return 'Base de datos';
      case 3:
        return 'Perfil de usuario';
      default:
        return 'Costealo';
    }
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomeDashboardScreen(),
      const SummaryScreen(),
      const DatabaseScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      backgroundColor: CostealoColors.primaryLight,
      body: Row(
        children: [
          SidebarMenu(
            selectedIndex: _selectedIndex,
            onItemSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Expanded(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: CostealoAppBar(title: _title),
              body: Padding(
                padding: const EdgeInsets.all(24),
                child: pages[_selectedIndex],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _selectedIndex == 0
          ? FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const NewSheetScreen(),
                  ),
                );
              },
              label: const Text('Nueva planilla'),
              icon: const Icon(Icons.add),
            )
          : null,
    );
  }
}
