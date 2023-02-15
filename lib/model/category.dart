import 'package:flutter/material.dart';

class Category {
  String name;
  List<Color> gradient;
  String image;

  Category({
    required this.name,
    required this.gradient,
    required this.image,
  });
}

final categories = [
  Category(
    name: 'Italian',
    gradient: [
      Color(0xffff5673),
      Color(0xffff8c48),
    ],
    image: 'assets/images/background_category_italian.png',
  ),
  Category(
    name: 'Chinese',
    gradient: [
      Color(0xff832bf6),
      Color(0xffff4665),
    ],
    image: 'assets/images/background_category_chinese.png',
  ),
  Category(
    name: 'Mexican',
    gradient: [
      Color(0xff2dcef8),
      Color(0xff3b40fe),
    ],
    image: 'assets/images/background_category_mexican.png',
  ),
  Category(
    name: 'Thai',
    gradient: [
      Color(0xff009dc5),
      Color(0xff21e590),
    ],
    image: 'assets/images/background_category_thai.png',
  ),
  Category(
    name: 'Arabian',
    gradient: [
      Color(0xffff870e),
      Color(0xffd236d2),
    ],
    image: 'assets/images/background_category_arabian.png',
  ),
  Category(
    name: 'Indian',
    gradient: [
      Color(0xfffe327e),
      Color(0xff5c51ff),
    ],
    image: 'assets/images/background_category_indian.png',
  ),
  Category(
    name: 'American',
    gradient: [
      Color(0xff2ce3f1),
      Color(0xff6143ff),
    ],
    image: 'assets/images/background_category_american.png',
  ),
  Category(
    name: 'Korean',
    gradient: [
      Color(0xffff5673),
      Color(0xffff8c48),
    ],
    image: 'assets/images/background_category_korean.png',
  ),
];
