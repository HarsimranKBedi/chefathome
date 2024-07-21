import 'package:flutter/material.dart';

class HeroIngredientList {
  final String title;
  final String subtitle;
  final String image;

  HeroIngredientList({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<HeroIngredientList> ingredients = [
  HeroIngredientList(
    title: 'Potato',
    subtitle: 'Versatile and humble.',
    image: 'assets/potato.jpg',
  ),
  HeroIngredientList(
    title: 'Broccoli',
    subtitle: 'Healthy green crunch.',
    image: 'assets/broccoli.jpg',
  ),
  HeroIngredientList(
    title: 'Mushroom',
    subtitle: 'Earthy and flavorful.',
    image: 'assets/mushroom.jpg',
  ),
  HeroIngredientList(
    title: 'Paneer',
    subtitle: 'Soft, cheesy delight.',
    image: 'assets/paneer.jpg',
  ),
  HeroIngredientList(
    title: 'Palak',
    subtitle: 'Nutrient-rich green leaf.',
    image: 'assets/palak.jpg',
  ),
  HeroIngredientList(
    title: 'Garlic',
    subtitle: 'Bold and aromatic.',
    image: 'assets/garlic.jpg',
  ),
  
  HeroIngredientList(
    title: 'Onion',
    subtitle: 'Flavorful and pungent.',
    image: 'assets/onion.jpg',
  ),
  HeroIngredientList(
    title: 'Tomato',
    subtitle: 'Juicy and tangy.',
    image: 'assets/tomato.jpg',
  ),

];
