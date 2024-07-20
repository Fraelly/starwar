// import 'package:flutter/material.dart';
// import 'package:starwar/api_service.dart';
// import 'package:starwar/model/film.dart';

// class CardFilms extends StatefulWidget {
//   const CardFilms({super.key});

//   @override
//   State<CardFilms> createState() => _CardFilmsState();
// }

//   late Future<List<Film>> futureFilms;

//   @override
//   void initState() {
//     super.initState();
//     futureFilms = ApiService().fetchFilms();
//   }


// class _CardFilmsState extends State<CardFilms> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//                   color: Colors.indigo[100],
//                   margin:const EdgeInsets.all(4.0),
//                   child: ListTile(
//                     leading: Image.network('https://m.media-amazon.com/images/I/712phcZ5ljL._AC_UF1000,1000_QL80_.jpg'),
//                     title: Text(film.title),
//                     subtitle: Text('Episode ${film.episodeId}'),
//                     onTap: () {
//                       // Navegar para os detalhes do filme
//                     },
//                   ),
//                 );
//   }
// }