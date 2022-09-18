import 'package:flutter/material.dart';
import 'package:pokedex/search/search_delegate.dart';
import 'package:pokedex/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pokedex'),
        actions: [
          IconButton(
            onPressed: () => showSearch(context: context, delegate: PokemonSearchDelegate()), 
            icon: Icon(Icons.search_outlined))
        ],
      ),
      
      body: 
        Column(
          children: [
            CardSwiper(),
            
          ],
        ),
       
      
            
      
    );
  }
}