import 'package:flutter/material.dart';
import 'package:mobilefteam/viewmodels/characters_viewmodel.dart';
import 'package:mobilefteam/views/character_detail_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    final viewModel = context.read<CharactersViewmodel>();
    viewModel.fetchCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personagens')),
      body: Consumer<CharactersViewmodel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: viewModel.characters.length,
              itemBuilder: (context, index) {
                final character = viewModel.characters[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            CharacterDetailPage(character: character),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Image.network(character.image, width: 50, height: 50),
                      SizedBox(width: 10),
                      Text(character.name),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
