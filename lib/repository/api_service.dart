import 'package:dio/dio.dart';
import '../model/film.dart';
import '../model/person_model.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://swapi.dev/api';

  Future<List<Film>> fetchFilms() async {
    try {
      final response = await _dio.get('$_baseUrl/films/');
      List jsonResponse = response.data['results'];
      return jsonResponse.map((film) => Film.fromJson(film)).toList();
    } catch (error) {
      throw Exception('Falha ao carregar filmes: $error');
    }
  }

  Future<List<Person>> fetchPerson() async {
    try {
      final response = await _dio.get('$_baseUrl/people/');
      List jsonResponse = response.data['results'];
      return jsonResponse.map((item) => Person.fromJson(item)).toList();
    } catch (error) {
      throw Exception('Falha ao carregar Personagem: $error');
    }
  }
}
