import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personagens')),
      body: Center(child: Text('Lita de todos os personagens aquir!')),
    );
  }
}
