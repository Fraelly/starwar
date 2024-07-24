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
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38),
          useMaterial3: true),
      initialRoute: '/home',
      routes: {
        '/home': (_) => const FilmListScreen(),
        // '/discricao': (_) => const Discricao(),
      },
    );
  }
}
