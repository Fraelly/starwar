import 'package:flutter/material.dart';
import 'package:starwar/repository/api_data_json.dart';

class ContaineOne extends StatefulWidget {
  const ContaineOne({super.key});

  @override
  State<ContaineOne> createState() => _ContaineOneState();
}

class _ContaineOneState extends State<ContaineOne> {
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
      return Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _person.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(4),
              width: 110,
              height: 200,
              decoration: const BoxDecoration(
                color: Colors.amber,
              ),
            );
          },
        ),
      );
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
