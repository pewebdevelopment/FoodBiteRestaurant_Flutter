import 'package:flutter/material.dart';

import '../../components/restaurant_card.dart';
import '../../model/category.dart';
import '../../model/restaurant.dart';
import 'widgets/app_bar_widget.dart';

class CategoryPage extends StatelessWidget {
  final Category category;

  const CategoryPage({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            AppBarWidget(
              title: category.name,
              image: category.image,
              color1: category.gradient[0],
              color2: category.gradient[1],
            ),
          ];
        },
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 17,
                ),
                padding: EdgeInsets.fromLTRB(23, 15, 23, 25),
                physics: NeverScrollableScrollPhysics(),
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
            ],
          ),
        ),
      ),
    );
  }
}
