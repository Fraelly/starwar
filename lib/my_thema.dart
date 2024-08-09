import 'package:flutter/material.dart';

// Definindo as cores
const Color backgroundColor = Color(0xFFD9D9D9); //60
const Color primaryColor = Color(0xFF00315C); //30
const Color accentColor = Color(0xFFBDDB39); //10

// Definindo fontes
const String primaryFontFamily = 'OpenSans';
const String headingFontFamily = 'Roboto';

// Estilos de botão
final ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    foregroundColor: primaryColor,
    backgroundColor: accentColor,
    textStyle: const TextStyle(
      // fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  ),
);

// Estilo da AppBar
const AppBarTheme appBarTheme = AppBarTheme(
  color: primaryColor,
  titleTextStyle: TextStyle(
    color: accentColor,
  ),
  iconTheme: IconThemeData(color: accentColor),
);

// Estilos de texto
const TextTheme textTheme = TextTheme(
  headlineSmall: TextStyle(
    color: accentColor,
    fontFamily: headingFontFamily,
    fontSize: 72.0,
    fontWeight: FontWeight.bold,
  ),
  headlineMedium: TextStyle(
    color: accentColor,
    fontFamily: headingFontFamily,
    fontSize: 36.0,
    fontStyle: FontStyle.italic,
  ),
  bodySmall: TextStyle(
    color: accentColor,
    fontFamily: primaryFontFamily,
    fontSize: 14.0,
  ),
);

// Estilo para campos de texto
const InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  border: OutlineInputBorder(),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: primaryColor),
  ),
  labelStyle: TextStyle(
    fontFamily: primaryFontFamily,
    color: primaryColor,
  ),
);

// Integrando tudo no ThemeData
final ThemeData myTheme = ThemeData(
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSwatch(accentColor: accentColor),
  // colorScheme: accentColor,
  scaffoldBackgroundColor: backgroundColor,
  fontFamily: primaryFontFamily,
  appBarTheme: appBarTheme,
  elevatedButtonTheme: elevatedButtonTheme,
  textTheme: textTheme,
  inputDecorationTheme: inputDecorationTheme,
  // listTileTheme: const ListTileThemeData(selectedColor: primaryColor),
  cardTheme: const CardTheme(color: primaryColor),
  listTileTheme: const ListTileThemeData(textColor: accentColor),
);
