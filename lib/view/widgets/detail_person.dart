import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class DetailPerson extends StatefulWidget {
  const DetailPerson({super.key});

  @override
  State<DetailPerson> createState() => _DetailPersonState();
}

class _DetailPersonState extends State<DetailPerson> {
  List person = [];

// Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString("assets/data_json.json");
    final data = await json.decode(response);
    setState(() {
      person = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Person'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text(person[1]['name']),
            // ElevatedButton(
            //   onPressed: readJson,
            //   child: const Text('Load Data'),
            // ),

            // Display the data loaded from sample.json
            person.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: person.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.all(10),
                          child: ListTile(
                            leading: Text(person[index]["id"]),
                            title: Text(person[index]["name"]),
                            subtitle: Text(person[index]["species"]),
                          ),
                        );
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
