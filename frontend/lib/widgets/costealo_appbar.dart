import 'package:flutter/material.dart';

class CostealoAppBar extends StatelessWidget {
  final String title;
  final String hintSearch;

  const CostealoAppBar({
    super.key,
    required this.title,
    this.hintSearch = 'Buscar por nombre',
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        Text(
          title,
          style: textTheme.headlineMedium,
        ),
        const Spacer(),
        SizedBox(
          width: 260,
          child: TextField(
            decoration: InputDecoration(
              hintText: hintSearch,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide.none,
              ),
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
