import 'package:flutter/material.dart';
import '../theme/costealo_theme.dart';

class CostealoAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CostealoAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 24,
      title: Text(
        title,
        style: const TextStyle(
          color: CostealoColors.text,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}
