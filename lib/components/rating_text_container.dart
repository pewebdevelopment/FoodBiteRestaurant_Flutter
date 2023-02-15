import 'package:flutter/material.dart';

import 'rating_text.dart';

class RatingTextContainer extends StatelessWidget {
  final double rating;

  const RatingTextContainer({Key? key, required this.rating}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 7.5,
      ),
      decoration: BoxDecoration(
        color: Color(0xff5663ff).withOpacity(0.05),
        borderRadius: BorderRadius.circular(2),
      ),
      child: RatingText(
        rating: 4.5,
      ),
    );
  }
}
