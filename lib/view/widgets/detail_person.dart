import 'package:flutter/material.dart';
import 'package:starwar/repository/api_data_json.dart';

class DetailPerson extends StatefulWidget {
  const DetailPerson({super.key});

  @override
  DetailPersonState createState() => DetailPersonState();
}

class DetailPersonState extends State<DetailPerson> {
  List _person = [];
  final JsonService _jsonService = JsonService(); // Instancia de PersonJson

  @override
  void initState() {
    super.initState();
    loadPersonData(); // Carrega os dados automaticamente ao inicializar o widget
  }

  // // Fetch content from the json file
  Future<void> loadPersonData() async {
    final data = await _jsonService.readJson();
    setState(() {
      _person = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'Person Detail',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _person.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: _person.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(5.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(_person[index]["image"]),
                        ),
                        title: Text(_person[index]["name"]),
                        subtitle: Text(_person[index]["species"]),
                      ),
                    );
                  },
                ),
              )
            : const Center(
                child:
                    CircularProgressIndicator()), // Exibe um indicador de carregamento enquanto os dados são carregados
      ),
    );
  }
}
