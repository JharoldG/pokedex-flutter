import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokedex/models/pokemon_json.dart';

class PokemonProvider extends ChangeNotifier{

  PokemonProvider () {
    print('Movies Provider Inicializado');

    getOnDisplayPokemon();
      
  }

  getOnDisplayPokemon () async {

    var url = Uri.https('raw.githubusercontent.com', '/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    final response = await http.get(url);
    //final pokemonResponse = PokemonResponse.fromJson();
    //print( pokemonResponse.pokemon[].name);

  }

}