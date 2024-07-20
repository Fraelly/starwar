import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:starwar/model/film.dart';

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

  Future<List<Category>> getCategory() async {
    try {
      final response = await _dio.get(_baseUrl);
      List jsonResponse = response.data;
      return jsonResponse
          .map((category) => Category(category))
          .toList();
    } catch (error) {
      throw Exception('Falha ao carregar category: $error');
    }
  }
}

