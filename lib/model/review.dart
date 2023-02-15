class Review {
  String title;
  String review;
  double rating;
  String image;
  Review({
    required this.title,
    required this.review,
    required this.rating,
    required this.image,
  });
}

final reviews = [
  Review(
    title: 'Cheesy Does It ',
    review:
        'Lorem ipsum dolor sit amet, consec tetur adipiscing elit, sed do eiusmo temp cididunt ut labore et dolore magna aliqua. Ut enim ad mini veniam quis.',
    rating: 4.5,
    image: 'assets/images/review_1.jpg',
  ),
  Review(
    title: 'Wok N\' Roll',
    review: 'Lorem ipsum dolor sit amet consectetur',
    rating: 4.5,
    image: 'assets/images/review_2.jpg',
  ),
  Review(
    title: 'Le Bernardin',
    review: 'Le Bernardin',
    rating: 5,
    image: 'assets/images/review_3.jpg',
  ),
  Review(
    title: 'Wild Thyme Cafe',
    review: 'Lorem ipsum dolor sit amet consectetur',
    rating: 4.2,
    image: 'assets/images/review_4.jpg',
  ),
  Review(
    title: 'Uncle Boons',
    review: 'Lorem ipsum dolor sit amet consectetur',
    rating: 4.5,
    image: 'assets/images/review_5.jpg',
  ),
  Review(
    title: 'Happy Bones',
    review: 'Lorem ipsum dolor sit amet consectetur',
    rating: 4.3,
    image: 'assets/images/review_6.jpg',
  ),
  Review(
    title: 'Ice Cream Parlor',
    review: 'Lorem ipsum dolor sit amet consectetur',
    rating: 3.2,
    image: 'assets/images/review_7.jpg',
  ),
  Review(
    title: 'Sweet Cakes',
    review: 'Lorem ipsum dolor sit amet consectetur',
    rating: 3.5,
    image: 'assets/images/review_8.jpg',
  ),
];
