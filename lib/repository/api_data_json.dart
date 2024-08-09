import 'dart:convert';

import 'package:flutter/services.dart';

class JsonService {
  Future<List> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    return data['person'];
  }
}
