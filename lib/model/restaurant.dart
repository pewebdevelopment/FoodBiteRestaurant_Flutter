import 'category.dart';

class Restaurant {
  String name;
  Category category;
  String address;
  double distance;
  double rating;
  bool isOpen;
  bool isFavorite;
  bool isReviewed;
  List<String> images;

  Restaurant({
    required this.name,
    required this.category,
    required this.address,
    required this.distance,
    required this.rating,
    required this.isOpen,
    required this.isFavorite,
    required this.isReviewed,
    required this.images,
  });
}

final restaurants = [
  Restaurant(
    name: 'Happy Bones',
    category: categories[0],
    address: '394 Broome St, New York, NY 10013',
    distance: 1.2,
    rating: 4.5,
    isOpen: true,
    isFavorite: true,
    isReviewed: false,
    images: [
      'assets/images/restaurant_1.png',
      '',
      '',
    ],
  ),
  Restaurant(
    name: 'Uncle Boons',
    category: categories[1],
    address: '7 Spring St, New York, NY 10012',
    distance: 2.5,
    rating: 4.3,
    isOpen: false,
    isFavorite: false,
    isReviewed: true,
    images: [
      'assets/images/restaurant_2.png',
      '',
      '',
    ],
  ),
  Restaurant(
    name: 'The Modern',
    category: categories[2],
    address: '9 W 53rd St, New York, NY 10019',
    distance: 3.2,
    rating: 4.3,
    isOpen: true,
    isFavorite: true,
    isReviewed: false,
    images: [
      'assets/images/restaurant_3.png',
      '',
      '',
    ],
  ),
  Restaurant(
    name: 'Le Bernardin',
    category: categories[3],
    address: '155 W 51st St, New York, NY 10019',
    distance: 2.5,
    rating: 4.5,
    isOpen: true,
    isFavorite: false,
    isReviewed: false,
    images: [
      'assets/images/restaurant_4.png',
      '',
      '',
    ],
  ),
];
