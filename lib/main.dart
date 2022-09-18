import 'package:flutter/material.dart';
import 'package:pokedex/providers/pokemon_provider.dart';
import 'package:pokedex/screens/screens.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';


void main() => runApp(AppState());

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => PokemonProvider(), lazy: false)
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue.shade100),
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      initialRoute: 'onboardingScreen',
      routes: {
        'onboardingScreen': (_) => OnboardingScreen(), 
        'home': (_) => HomeScreen(),
        'pokemonDetailsScreen': (_) => PokemonDetailsScreen(),
      },      
    );
  }
}