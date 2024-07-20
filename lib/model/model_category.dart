import 'dart:convert';

class Category {
  final String people;
  final String planets;
  final String films;
  final String species;
  final String vehicles;
  final String starships;
  Category({
    required this.people,
    required this.planets,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
  });

  Category copyWith({
    String? people,
    String? planets,
    String? films,
    String? species,
    String? vehicles,
    String? starships,
  }) {
    return Category(
      people: people ?? this.people,
      planets: planets ?? this.planets,
      films: films ?? this.films,
      species: species ?? this.species,
      vehicles: vehicles ?? this.vehicles,
      starships: starships ?? this.starships,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'people': people,
      'planets': planets,
      'films': films,
      'species': species,
      'vehicles': vehicles,
      'starships': starships,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      people: map['people'] ?? '',
      planets: map['planets'] ?? '',
      films: map['films'] ?? '',
      species: map['species'] ?? '',
      vehicles: map['vehicles'] ?? '',
      starships: map['starships'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) => Category.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Category(people: $people, planets: $planets, films: $films, species: $species, vehicles: $vehicles, starships: $starships)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Category &&
      other.people == people &&
      other.planets == planets &&
      other.films == films &&
      other.species == species &&
      other.vehicles == vehicles &&
      other.starships == starships;
  }

  @override
  int get hashCode {
    return people.hashCode ^
      planets.hashCode ^
      films.hashCode ^
      species.hashCode ^
      vehicles.hashCode ^
      starships.hashCode;
  }
}