import 'package:flutter/material.dart';

class ImgTop extends StatelessWidget {
  const ImgTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/logo_starwars.png',
      height: 50,
    );
  }
}
