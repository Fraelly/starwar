import 'package:flutter/material.dart';

import '../../my_thema.dart';

class TitleTrilogia extends StatelessWidget {
  const TitleTrilogia({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Icon(
            Icons.double_arrow,
            color: accentColor,
          ),
          Text(
            'Trilogia Prequela'.toUpperCase(),
            style: const TextStyle(
              color: accentColor,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
