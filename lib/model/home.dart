import 'package:flutter/material.dart';
import 'package:starwar/api_service.dart';
import 'package:starwar/model/film.dart';

class FilmListScreen extends StatefulWidget {
  const FilmListScreen({super.key});

  @override
  FilmListScreenState createState() => FilmListScreenState();
}

class FilmListScreenState extends State<FilmListScreen> {
  late Future<List<Film>> futureFilms;

  @override
  void initState() {
    super.initState();
    futureFilms = ApiService().fetchFilms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Star Wars Films'),
      ),
      body: FutureBuilder<List<Film>>(
        future: futureFilms,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No films found'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final film = snapshot.data![index];
                return ListTile(
                  title: Text(film.title),
                  subtitle: Text('Episode ${film.episodeId}'),
                  onTap: () {
                    // Navegar para os detalhes do filme
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
