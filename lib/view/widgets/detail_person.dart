import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailPerson extends StatefulWidget {
  const DetailPerson({super.key});

  @override
  DetailPersonState createState() => DetailPersonState();
}

class DetailPersonState extends State<DetailPerson> {
  List _person = [];

  @override
  void initState() {
    super.initState();
    readJson(); // Carrega os dados automaticamente ao inicializar o widget
  }

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    setState(() {
      _person = data["person"];
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
        padding: const EdgeInsets.all(25),
        child: _person.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: _person.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Text(_person[index]["name"]),
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
