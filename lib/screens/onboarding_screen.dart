import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/pokedex.png", height: 350,),
              const SizedBox(height: 80,),
              Text('Bienvenido a\nPokedex Pragma',
              textAlign: TextAlign.center, 
              style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(fontWeight: FontWeight.w700)
              ),
              const SizedBox(height: 80,),
              const Text('Desarrollado en Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10,
        backgroundColor: Colors.white,
        onPressed: () async => Navigator.pushNamed(context, 'home'), 
        label: const Text(
          '¡GO!',
          style: TextStyle(
            color: Colors.black, 
            fontSize: 22, 
            fontWeight: FontWeight.bold
          ),
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
    );
  }
}