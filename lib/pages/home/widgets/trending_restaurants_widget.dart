import 'package:flutter/material.dart';

import '../../../components/restaurant_card.dart';
import '../../../model/restaurant.dart';

class TrendingRestaurantWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 287,
      child: ListView.separated(
        padding: EdgeInsets.only(top: 18, bottom: 34, left: 23, right: 23),
        separatorBuilder: (context, index) => SizedBox(
          width: 18,
        ),
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return RestaurantCard(
            restaurant: restaurants[index],
          );
        },
      ),
    );
  }
}
