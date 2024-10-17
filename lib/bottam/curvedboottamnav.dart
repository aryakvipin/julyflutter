import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:carouselexaple()));
}
class carouselexaple extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: CarouselSlider(items:
          const [
            Image(image: AssetImage("assets/images/bg.jpg")) ,
            Image(image: AssetImage("assets/images/bg.jpg")) ,
            Image(image: AssetImage("assets/images/bg.jpg")) ,

          ],options: CarouselOptions(
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 1,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.bounceInOut,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          )
          )
      ),
    );
  }
}