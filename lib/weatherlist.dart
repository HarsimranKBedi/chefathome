import 'package:flutter/material.dart';

class Weatherlist {
  String image;
  String heading;
  Color color; // Changed from String to Color

  Weatherlist({
    required this.image,
    required this.heading,
    required this.color,
  });
}

List<Weatherlist> items = [
  //  Weatherlist(
  //   image: 'assets/tag.png',
  //   heading: 'Recipes based on Weather!',
  //   color: Colors.black, // Changed from 'Colors.black' to Colors.black
  // ),
  Weatherlist(
    image: 'assets/image1.png',
    heading: 'Summer',
    color: const Color.fromARGB(255, 37, 37, 37), // Changed from 'Colors.black' to Colors.black
  ),
  Weatherlist(
    image: 'assets/image2.png',
    heading: 'Winter',
    color: Color.fromARGB(255, 81, 80, 80), // Changed from 'Colors.grey' to Colors.grey
  ),
  Weatherlist(
    image: 'assets/image3.png',
    heading: 'Rain',
    color: Color.fromARGB(255, 1, 30, 2), // Changed from 'Colors.green' to Colors.green
  ),
  Weatherlist(
    image: 'assets/image4.png',
    heading: 'Spring',
    color: const Color.fromARGB(255, 37, 37, 37),
  )
];
