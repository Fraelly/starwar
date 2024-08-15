import 'package:flutter/material.dart';
import 'package:starwar/my_thema.dart';

class TextfieldBusca extends StatelessWidget {
  const TextfieldBusca({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          // borderSide: BorderSide.none,
        ),
        filled: true,
        hoverColor: Colors.white,
        prefixIcon: const Icon(Icons.search),
        prefixIconColor:
            WidgetStateColor.resolveWith((Set<WidgetState> states) {
          if (states.contains(WidgetState.focused)) {
            return primaryColor;
          }
          return accentColor;
        }),
        hintText: ('Buscar'),
      ),
    );
  }
}
