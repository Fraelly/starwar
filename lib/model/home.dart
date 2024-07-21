import 'package:flutter/material.dart';
import 'package:starwar/repository/api_service.dart';
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
        backgroundColor: Colors.black12,
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
                return Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.play_circle_fill_outlined),
                  title: Text(film.title),
                  subtitle: Text(film.director,
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(film.openingCrawl,
                    style: TextStyle(color: Colors.white.withOpacity(0.6)),
                  ),
                ),
                // ButtonBar(
                //   alignment: MainAxisAlignment.start,
                //   children: [
                //     FlatButton(
                //       textColor: const Color(0xFF6200EE),
                //       onPressed: () {
                //         // Perform some action
                //       },
                //       child: const Text('ACTION 1'),
                //     ),
                //     FlatButton(
                //       textColor: const Color(0xFF6200EE),
                //       onPressed: () {
                //         // Perform some action
                //       },
                //       child: const Text('ACTION 2'),
                //     ),
                //   ],
                // ),
                Image.network('https://lumiere-a.akamaihd.net/v1/images/image_a89e70e8.jpeg'),
                Image.network('https://i.pinimg.com/originals/4e/d9/07/4ed90732fb3068f42c3dc8b57a29e986.png'),
              ],
            ),
          );
              },
            );
          }
        },
      ),
    );
  }
}
