import 'package:flutter/material.dart';
import 'package:starwar/my_thema.dart';

class TextfieldBusca extends StatelessWidget {
  final void Function(String)?
      onChanged; // Adiciona um parâmetro para o callback

  const TextfieldBusca(
      {super.key, this.onChanged}); // Recebe o callback no construtor

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: TextInputType.name,
      // Usa o callback passado como parâmetro
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          // borderSide: BorderSide.none,
        ),
        filled: true,
        hoverColor: Colors.white,
        suffix: const SizedBox(
          height: 10,
          width: 10,
          child: CircularProgressIndicator(
            color: primaryColor,
            backgroundColor: accentColor,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),
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
