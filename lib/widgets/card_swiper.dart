import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.6,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.5,
        itemBuilder: ( _ , int index ){

          return Container(
           
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'pokemonDetailsScreen', arguments: 'pokemonInstance'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/loading.gif'), 
                  image: AssetImage('assets/no-image.jpg'),
                  fit: BoxFit.cover,
                  ),
              ),
            ),
          );
        }, 
      ),
    );
  }
}