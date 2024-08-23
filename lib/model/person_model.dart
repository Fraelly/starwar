import 'dart:convert';

import 'package:flutter/foundation.dart';

class Person {
  final int id;
  final String name;
  final double height;
  final int mass;
  final String gender;
  final String homeworld;
  final String wiki;
  final String image;
  final int born;
  final String bornLocation;
  final int died;
  final String diedLocation;
  final String species;
  final String hairColor;
  final String eyeColor;
  final String skinColor;
  final String cybernetics;
  final List<String> affiliations;
  final List<String> masters;
  final List<String> apprentices;
  final List<dynamic> formerAffiliations;
  Person({
    required this.id,
    required this.name,
    required this.height,
    required this.mass,
    required this.gender,
    required this.homeworld,
    required this.wiki,
    required this.image,
    required this.born,
    required this.bornLocation,
    required this.died,
    required this.diedLocation,
    required this.species,
    required this.hairColor,
    required this.eyeColor,
    required this.skinColor,
    required this.cybernetics,
    required this.affiliations,
    required this.masters,
    required this.apprentices,
    required this.formerAffiliations,
  });

  Person copyWith({
    int? id,
    String? name,
    double? height,
    int? mass,
    String? gender,
    String? homeworld,
    String? wiki,
    String? image,
    int? born,
    String? bornLocation,
    int? died,
    String? diedLocation,
    String? species,
    String? hairColor,
    String? eyeColor,
    String? skinColor,
    String? cybernetics,
    List<String>? affiliations,
    List<String>? masters,
    List<String>? apprentices,
    List<dynamic>? formerAffiliations,
  }) {
    return Person(
      id: id ?? this.id,
      name: name ?? this.name,
      height: height ?? this.height,
      mass: mass ?? this.mass,
      gender: gender ?? this.gender,
      homeworld: homeworld ?? this.homeworld,
      wiki: wiki ?? this.wiki,
      image: image ?? this.image,
      born: born ?? this.born,
      bornLocation: bornLocation ?? this.bornLocation,
      died: died ?? this.died,
      diedLocation: diedLocation ?? this.diedLocation,
      species: species ?? this.species,
      hairColor: hairColor ?? this.hairColor,
      eyeColor: eyeColor ?? this.eyeColor,
      skinColor: skinColor ?? this.skinColor,
      cybernetics: cybernetics ?? this.cybernetics,
      affiliations: affiliations ?? this.affiliations,
      masters: masters ?? this.masters,
      apprentices: apprentices ?? this.apprentices,
      formerAffiliations: formerAffiliations ?? this.formerAffiliations,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'height': height,
      'mass': mass,
      'gender': gender,
      'homeworld': homeworld,
      'wiki': wiki,
      'image': image,
      'born': born,
      'bornLocation': bornLocation,
      'died': died,
      'diedLocation': diedLocation,
      'species': species,
      'hairColor': hairColor,
      'eyeColor': eyeColor,
      'skinColor': skinColor,
      'cybernetics': cybernetics,
      'affiliations': affiliations,
      'masters': masters,
      'apprentices': apprentices,
      'formerAffiliations': formerAffiliations,
    };
  }

  factory Person.fromMap(Map<String, dynamic> json) {
    return Person(
      id: json['id']?.toInt() ?? 0,
      name: json['name'] ?? '',
      height: json['height']?.toDouble() ?? 0.0,
      mass: json['mass']?.toInt() ?? 0,
      gender: json['gender'] ?? '',
      homeworld: json['homeworld'] ?? '',
      wiki: json['wiki'] ?? '',
      image: json['image'] ?? '',
      born: json['born']?.toInt() ?? 0,
      bornLocation: json['bornLocation'] ?? '',
      died: json['died']?.toInt() ?? 0,
      diedLocation: json['diedLocation'] ?? '',
      species: json['species'] ?? '',
      hairColor: json['hairColor'] ?? '',
      eyeColor: json['eyeColor'] ?? '',
      skinColor: json['skinColor'] ?? '',
      cybernetics: json['cybernetics'] ?? '',
      affiliations: List<String>.from(json['affiliations']),
      masters: List<String>.from(json['masters']),
      apprentices: List<String>.from(json['apprentices']),
      formerAffiliations: List<dynamic>.from(json['formerAffiliations']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Person(id: $id, name: $name, height: $height, mass: $mass, gender: $gender, homeworld: $homeworld, wiki: $wiki, image: $image, born: $born, bornLocation: $bornLocation, died: $died, diedLocation: $diedLocation, species: $species, hairColor: $hairColor, eyeColor: $eyeColor, skinColor: $skinColor, cybernetics: $cybernetics, affiliations: $affiliations, masters: $masters, apprentices: $apprentices, formerAffiliations: $formerAffiliations)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Person &&
        other.id == id &&
        other.name == name &&
        other.height == height &&
        other.mass == mass &&
        other.gender == gender &&
        other.homeworld == homeworld &&
        other.wiki == wiki &&
        other.image == image &&
        other.born == born &&
        other.bornLocation == bornLocation &&
        other.died == died &&
        other.diedLocation == diedLocation &&
        other.species == species &&
        other.hairColor == hairColor &&
        other.eyeColor == eyeColor &&
        other.skinColor == skinColor &&
        other.cybernetics == cybernetics &&
        listEquals(other.affiliations, affiliations) &&
        listEquals(other.masters, masters) &&
        listEquals(other.apprentices, apprentices) &&
        listEquals(other.formerAffiliations, formerAffiliations);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        height.hashCode ^
        mass.hashCode ^
        gender.hashCode ^
        homeworld.hashCode ^
        wiki.hashCode ^
        image.hashCode ^
        born.hashCode ^
        bornLocation.hashCode ^
        died.hashCode ^
        diedLocation.hashCode ^
        species.hashCode ^
        hairColor.hashCode ^
        eyeColor.hashCode ^
        skinColor.hashCode ^
        cybernetics.hashCode ^
        affiliations.hashCode ^
        masters.hashCode ^
        apprentices.hashCode ^
        formerAffiliations.hashCode;
  }
}
