import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'detail person ...',
      (tester) async {
        //  List person = [];

// Fetch content from the json file
        Future<void> readJson() async {
          final String response =
              await rootBundle.loadString("assets/data_json.json");
          final data = await json.decode(response);

          // setState(() {
          //   person = data["name"];
          // });
          print(data);
        }
      } as Function());
}
