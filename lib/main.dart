import 'package:flutter/material.dart';
import 'package:starwar/my_thema.dart';
import 'package:starwar/view/widgets/detail_person.dart';
import 'package:starwar/view/widgets/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StarWars',
      theme: myTheme,
      initialRoute: '/home',
      routes: {
        '/home': (_) => const Home(),
        // '/home': (_) => const FilmListScreen(),
        '/detail': (_) => const DetailPerson(),
        // '/thema': (_) => ThemaPersonalizado(),
      },
    );
  }
}
