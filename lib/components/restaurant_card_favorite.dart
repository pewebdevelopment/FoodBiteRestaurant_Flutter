import 'package:flutter/material.dart';
import 'package:foodybite/model/restaurant.dart';
import 'package:foodybite/utils/app_utils.dart';

import '../routes/routes.dart';
import '../utils/constants.dart';
import 'restaurant_card.dart';

class RestaurantCardFavorite extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantCardFavorite({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  _RestaurantCardFavoriteState createState() => _RestaurantCardFavoriteState();
}

class _RestaurantCardFavoriteState extends State<RestaurantCardFavorite> {
  late bool _isFavorite;

  @override
  void initState() {
    _isFavorite = widget.restaurant.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(Routes.restaurantDetails, arguments: widget.restaurant);
      },
      child: Stack(
        children: <Widget>[
          RestaurantCard(
            width: double.infinity,
            height: 262,
            imageHeight: 187,
            restaurant: widget.restaurant,
          ),
          Positioned.directional(
            textDirection:
                AppUtils.isRTL(context) ? TextDirection.rtl : TextDirection.ltr,
            end: 21,
            bottom: 58,
            child: RawMaterialButton(
              onPressed: () {
                setState(() {
                  _isFavorite = !_isFavorite;
                });
              },
              shape: CircleBorder(),
              fillColor: Colors.white,
              constraints: BoxConstraints.tightFor(
                width: 49,
                height: 49,
              ),
              child: Icon(
                _isFavorite ? Icons.bookmark : Icons.bookmark_border,
                color: kColorPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
