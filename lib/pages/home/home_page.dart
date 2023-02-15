import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/search_widget.dart';
import '../../components/section_title_widget.dart';
import '../../routes/routes.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: SearchWidget(),
            ),
            SizedBox(
              height: 25,
            ),
            SectionTitleWidget(
              title: 'trending_rstaurants'.tr(),
              count: 45,
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.trendingRestaurants);
              },
            ),
            TrendingRestaurantWidget(),
            SectionTitleWidget(
              title: 'categories'.tr(),
              count: 9,
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.categories);
              },
            ),
            CategoriesWidget(),
            SectionTitleWidget(
              title: 'friends'.tr(),
              count: 59,
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.findFriends);
              },
            ),
            FriendsWidget(),
          ],
        ),
      ),
    );
  }
}
