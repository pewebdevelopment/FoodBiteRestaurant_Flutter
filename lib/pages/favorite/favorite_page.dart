import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/restaurant_card_favorite.dart';
import '../../data/pref_manager.dart';
import '../../model/restaurant.dart';
import '../../utils/constants.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my_favorite'.tr()),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/images/icon_search.png',
              color: Prefs.getBool(Prefs.DARKTHEME, def: false)
                  ? Colors.white.withOpacity(0.87)
                  : kColorPrimaryDark,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 17,
        ),
        padding: EdgeInsets.fromLTRB(23, 15, 23, 25),
        itemCount: restaurants.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return restaurants[index].isFavorite
              ? RestaurantCardFavorite(
                  restaurant: restaurants[index],
                )
              : Container();
        },
      ),
    );
  }
}
