import 'package:flutter/material.dart';
import 'package:starwar/my_thema.dart';

class ContaineOne2 extends StatelessWidget {
  final List<Map<String, String>> people;

  const ContaineOne2({super.key, required this.people});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500, // Ajuste a altura conforme necessário
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //numero de colunas
          crossAxisSpacing: 8.0,
          mainAxisExtent: 160, //altura do item
          mainAxisSpacing: 8.0, // padding bot
        ),
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              InkWell(
                onTap: () => Null,
                child: Container(
                  width: 130, // Largura de cada item (capa)
                  // margin: const EdgeInsets.symmetric(
                  //     horizontal: 4.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(person['image'] ?? ''),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38.withOpacity(0.5),
                        // spreadRadius: 1,
                        blurRadius: 7,
                        // offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  person['name'] ?? '',
                  style: const TextStyle(
                    shadows: [
                      Shadow(
                          offset: Offset(-5.0, 5.0),
                          blurRadius: 7,
                          color: Colors.black38),
                    ],
                    // backgroundColor: accentColor,
                    color: accentColor, fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
