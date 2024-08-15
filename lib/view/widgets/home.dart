import 'package:flutter/material.dart';
import 'package:starwar/view/widgets/img_top.dart';
import 'package:starwar/view/widgets/list_de_list.dart';
import 'package:starwar/view/widgets/nav_bar.dart';
import 'package:starwar/view/widgets/textfield.dart';

import '../slider_top.dart';
import 'title_trilogia.dart';

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 16.0),
                  ImgTop(),
                  SizedBox(height: 16.0),
                  TextfieldBusca(),
                  SizedBox(height: 16.0),
                  SliderTop(),
                  SizedBox(height: 16.0),
                  TitleTrilogia(),
                  // SizedBox(height: 4.0),
                  // ContaineOne(),
                  ListDeList(),
                  NavBar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
