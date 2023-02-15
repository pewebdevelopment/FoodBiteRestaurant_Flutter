import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../data/pref_manager.dart';

class RatingContainer extends StatelessWidget {
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const RatingContainer({
    Key? key,
    this.padding,
    this.margin,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin ?? EdgeInsets.all(0),
      padding: padding ??
          EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 22,
          ),
      decoration: BoxDecoration(
        color: Prefs.getBool(Prefs.DARKTHEME, def: false)
            ? Colors.white.withOpacity(0.2)
            : Color(0xffeef7ff).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: FittedBox(
          child: RatingBar(
            initialRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            ratingWidget: RatingWidget(
              full: Image.asset('assets/images/icon_star.png'),
              empty: Image.asset(
                'assets/images/icon_star_unselected.png',
                color: Colors.grey,
              ),
              half: Image.asset('assets/images/icon_star.png'),
            ),
            itemPadding: EdgeInsets.symmetric(horizontal: 8),
            onRatingUpdate: (rating) {},
          ),
        ),
      ),
    );
  }
}
