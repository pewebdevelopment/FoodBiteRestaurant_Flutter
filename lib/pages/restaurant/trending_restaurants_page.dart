import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/restaurant_card.dart';
import '../../components/search_widget.dart';
import '../../model/restaurant.dart';

class TrendingRestaurantsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('trending_rstaurants'.tr()),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
            child: SearchWidget(),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 17,
              ),
              padding: EdgeInsets.fromLTRB(23, 15, 23, 25),
              itemCount: restaurants.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RestaurantCard(
                  width: double.infinity,
                  height: 261,
                  imageHeight: 187,
                  restaurant: restaurants[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
