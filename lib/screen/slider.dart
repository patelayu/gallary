import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


import 'global.dart';

class Image_Slider extends StatefulWidget {
  @override
  State<Image_Slider> createState() => _Image_SliderState();
}

class _Image_SliderState extends State<Image_Slider> {
  @override
  Widget build(BuildContext context) {
    int arg = ModalRoute.of(context)!.settings.arguments as int;

    return Scaffold(
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            height: 200,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
          ),
          items: Gollbal.Images.map((e) {
            return Container(
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    child: Image(
                      image: AssetImage(
                        Gollbal.Images[arg]["Image"],
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    Gollbal.Images[arg]["Name"],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}