import 'package:flutter/material.dart';
import 'package:starwar/my_thema.dart';
import 'package:starwar/view/widgets/img_top.dart';
import 'package:starwar/view/widgets/textfield.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.topCenter,
                  colors: <Color>[
                Color(0xFF2A4C67),
                Color(0xFF09203F),
              ])),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: 16.0),
                ImgTop(),
                SizedBox(height: 16.0),
                TextfieldBusca(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
