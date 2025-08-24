import 'package:flutter/material.dart';
import 'package:mobilefteam/views/models/characters.dart';

class CharacterDetailPage extends StatelessWidget {
  final CharacterModel character;

  const CharacterDetailPage({required this.character, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(character.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(character.image),
          SizedBox(height: 10),
          Text('Nome: ${character.name}'),
          Text('Status: ${character.status}'),
          Text('Espécie: ${character.species}'),
        ],
      ),
    );
  }
}
