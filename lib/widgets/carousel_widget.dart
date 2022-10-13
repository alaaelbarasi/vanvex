import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarsouelWidget extends StatelessWidget {
  const CarsouelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CarouselSlider(
      options: CarouselOptions(
        height: size.height / 4,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 350),
      ),
      items: [
        'assets/images/1.jpg',
        'assets/images/2.jpg',
        'assets/images/3.jpg',
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(color: Colors.amber),
              child: Image.asset(i, fit: BoxFit.cover),
            );
          },
        );
      }).toList(),
    );
  }
}
