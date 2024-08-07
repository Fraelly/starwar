import 'dart:convert';

import 'package:flutter/services.dart';

class ApiPerson {
  List person = [];

// Fetch content from the json file
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('lib/data/data_json.json');
    final data = await json.decode(response);
    return data;
  }
}
