import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: carosleleg(),));
}
class carosleleg extends StatefulWidget {
  const carosleleg({super.key});

  @override
  State<carosleleg> createState() => _caroslelegState();
}

class _caroslelegState extends State<carosleleg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child:
      CarouselSlider(
    items: [
      Image(image: AssetImage("assets/images/bg.jpg")),
      Image(image: AssetImage("assets/images/bg.jpg")),
      Image(image: AssetImage("assets/images/bg.jpg")),
      Image(image: AssetImage("assets/images/bg.jpg")),

    ],
    options: CarouselOptions(
      height: 400,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: true,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.bounceIn,
      enlargeCenterPage: true,
      enlargeFactor: 0.3,
      scrollDirection: Axis.horizontal,
    )
    ),),
    );
  }
}
