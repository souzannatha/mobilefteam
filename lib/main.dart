import 'package:flutter/material.dart';
import 'package:mobilefteam/viewmodels/characters_viewmodel.dart';
import 'package:mobilefteam/views/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CharactersViewmodel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick And Morty app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomePage(),
    );
  }
}
