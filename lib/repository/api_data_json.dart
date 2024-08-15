// import 'dart:convert';

// import 'package:flutter/services.dart';

// class JsonService {
//   Future<List> readJson() async {
//     final String response = await rootBundle.loadString('assets/data.json');
//     final data = await json.decode(response);
//     return data['person'];
//   }
// }

class JsonService {
  // Simulação de leitura de JSON
  Future<List<Map<String, String>>> readJson() async {
    await Future.delayed(const Duration(seconds: 2)); // Simula atraso
    return [
      {
        "name": "Luke Skywalker",
        "image":
            "https://vignette.wikia.nocookie.net/starwars/images/2/20/LukeTLJ.jpg"
      },
      {
        "name": "Luke Skywalker",
        "image":
            "https://vignette.wikia.nocookie.net/starwars/images/2/20/LukeTLJ.jpg"
      },
      {
        "name": "Luke Skywalker",
        "image":
            "https://vignette.wikia.nocookie.net/starwars/images/2/20/LukeTLJ.jpg"
      },
      {
        "name": "Luke Skywalker",
        "image":
            "https://vignette.wikia.nocookie.net/starwars/images/2/20/LukeTLJ.jpg"
      },
    ];
  }
}
