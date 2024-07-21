import 'package:flutter/material.dart';
import 'package:starwar/model/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StarWars',
      theme: ThemeData.dark(useMaterial3:true),
      home: const FilmListScreen(),
    );
  }
}
