import 'package:flutter/material.dart';
import 'package:starwar/my_thema.dart';

class SliderTop extends StatelessWidget {
  const SliderTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: accentColor,
        ),
        height: 160,
        width: double.infinity);
  }
}
