import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobilefteam/views/models/characters.dart';

class CharactersViewmodel extends ChangeNotifier {
  List<CharacterModel> characters = [];
  bool isLoading = false;

  Future<void> fetchCharacters() async {
    isLoading = true;
    notifyListeners();

    final url = Uri.parse('https://rickandmortyapi.com/api/character');
    final responseUrl = await http.get(url);

    if (responseUrl.statusCode == 200) {
      final data = jsonDecode(responseUrl.body);

      final results = data['results'] as List;
      characters = results.map((map) => CharacterModel.fromMap(map)).toList();
    } else {
      throw Exception('Falha ao carregar personagens');
    }

    isLoading = false;
    notifyListeners();
  }
}
