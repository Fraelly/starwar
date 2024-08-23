import 'package:flutter/material.dart';
import '../../model/person_model.dart';
import '../../repository/api_service.dart';
import 'img_top.dart';
import 'textfield.dart';
import 'containe_one.dart';
import 'title_trilogia.dart';

// Importa JsonService

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Person> _allPeople = [];
  List<Person> _filteredPeople = [];
  final ApiService _apiService = ApiService();

  @override
  void initState() {
    super.initState();
    _loadPeople();
  }

  Future<void> _loadPeople() async {
    final people = await _apiService.fetchPerson();
    setState(() {
      _allPeople = people;
      _filteredPeople = people;
    });
  }

  void _filterPeople(String query) {
    final filtered = _allPeople.where((person) {
      final name = person.name.toLowerCase();
      final lowerCaseQuery = query.toLowerCase();
      return name.contains(lowerCaseQuery);
    }).toList();
    setState(() {
      _filteredPeople = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.topCenter,
                colors: <Color>[
                  Color(0xFF2A4C67),
                  Color(0xFF09203F),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 16.0),
                    const ImgTop(),
                    const SizedBox(height: 16.0),
                    TextfieldBusca(
                      onChanged:
                          _filterPeople, // Passa a função de filtro para o TextfieldBusca
                    ),
                    // const SizedBox(height: 16.0),
                    // const SliderTop(),
                    const SizedBox(height: 16.0),
                    const TitleTrilogia(),
                    // const SizedBox(height: 4.0),
                    ContaineOne(
                        people:
                            _filteredPeople), // Passa a lista filtrada para ContaineOne
                    // const SizedBox(height: 16.0),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
