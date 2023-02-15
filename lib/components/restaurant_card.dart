import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../model/restaurant.dart';
import '../routes/routes.dart';
import '../utils/app_utils.dart';
import '../utils/constants.dart';
import 'label_category.dart';
import 'label_distance.dart';
import 'rating_text.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  final double? width;
  final double? height;
  final double? imageHeight;
  final bool? showMore;
  final void Function()? onTapMore;

  const RestaurantCard({
    Key? key,
    required this.restaurant,
    this.width,
    this.height,
    this.imageHeight,
    this.showMore,
    this.onTapMore,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(Routes.restaurantDetails, arguments: restaurant);
      },
      child: Container(
        width: width ?? 302,
        height: height ?? 235,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color(0x1f000000),
              offset: Offset(0, 3),
              blurRadius: 33,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: imageHeight ?? 161,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.asset(
                      restaurant.images[0],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 9.5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x29000000),
                                offset: Offset(0, 1),
                                blurRadius: 2,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Text(
                            restaurant.isOpen
                                ? 'open'.tr().toUpperCase()
                                : 'close'.tr().toUpperCase(),
                            style: TextStyle(
                              color: restaurant.isOpen
                                  ? Color(0xff4cd964)
                                  : Color(0xffff3b30),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 9.5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x29000000),
                                offset: Offset(0, 1),
                                blurRadius: 2,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: RatingText(
                            rating: restaurant.rating,
                            color: kColorPrimaryDark,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: AppUtils.isRTL(context) ? 0 : 13,
                  right: AppUtils.isRTL(context) ? 13 : 0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          restaurant.name,
                          style: TextStyle(
                            color: Color(0xff3e3f68),
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        LabelCategory(
                          category: restaurant.category,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        LabelDistance(
                          distance: restaurant.distance,
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        if (showMore != null && showMore == true)
                          ClipOval(
                            child: Material(
                              color: Colors.white,
                              child: InkWell(
                                onTap: onTapMore,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xff707070),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (showMore == null)
                      SizedBox(
                        height: 8,
                      ),
                    Text(
                      restaurant.address,
                      style: TextStyle(
                        color: kColorBlueyGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
