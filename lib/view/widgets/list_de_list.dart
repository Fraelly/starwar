import 'package:flutter/material.dart';
import 'package:starwar/repository/api_data_json.dart';

class ListDeList extends StatefulWidget {
  const ListDeList({super.key});

  @override
  State<ListDeList> createState() => _ListDeListState();
}

class _ListDeListState extends State<ListDeList> {
  List _person = [];
  final JsonService _jsonService = JsonService(); // Instancia de PersonJson

  @override
  void initState() {
    super.initState();
    loadPersonData(); // Carrega os dados automaticamente ao inicializar o widget
  }

  Future<void> loadPersonData() async {
    final data = await _jsonService.readJson();
    setState(() {
      _person = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_person.isNotEmpty) {
      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(12),
                  height: 100,
                  width: 150,
                  color: Colors.pink,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _person.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 20,
                  height: 20,
                  color: Colors.amber,
                );
              },
            ),
          ],
        ),
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
