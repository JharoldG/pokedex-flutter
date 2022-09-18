import 'package:flutter/material.dart';

class PokemonDetailsScreen extends StatelessWidget {
  const PokemonDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RandomPokemon'),
      ),
    );
  }
}