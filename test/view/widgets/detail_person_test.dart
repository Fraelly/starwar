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
          final String response = await rootBundle.loadString("data_json.json");
          final data = await json.decode(response);

          // setState(() {
          //   person = data["name"];
          // });
          return print(data);
        }

        readJson();
      } as Function());
}
