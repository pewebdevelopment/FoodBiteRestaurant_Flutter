import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/label_category.dart';
import '../../components/label_distance.dart';
import '../../components/rating_list_item_widget.dart';
import '../../components/rating_text_container.dart';
import '../../components/section_title_widget.dart';
import '../../model/restaurant.dart';
import '../../model/review.dart';
import '../../routes/routes.dart';
import '../../utils/constants.dart';
import 'widgets/widgets.dart';

class RestaurantDetailsPage extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantDetailsPage({Key? key, required this.restaurant})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  AppBarWidget(
                    restaurant: restaurant,
                  ),
                ];
              },
              body: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                restaurant.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
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
                              LabelDistance(distance: 1.2),
                              Expanded(
                                child: Container(),
                              ),
                              RatingTextContainer(rating: 4.5),
                            ],
                          ),
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
                          SizedBox(
                            height: 8,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: restaurant.isOpen
                                      ? 'open_now'.tr()
                                      : 'closed'.tr(),
                                  style: TextStyle(
                                    color: Color(0xffff4a40),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                TextSpan(
                                  text: ' ${'daily_time'.tr()} ',
                                  style: TextStyle(
                                    color: kColorGrey,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      '9:30 ${'am'.tr()} ${'to'.tr()} 11:00 ${'pm'.tr()}',
                                  style: TextStyle(
                                    color: Color(0xffff4a40),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SectionTitleWidget(
                      title: 'menus_photos'.tr(),
                      count: 32,
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.photos);
                      },
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    PhotosWidget(),
                    SizedBox(
                      height: 25,
                    ),
                    SectionTitleWidget(
                      title: 'reviews_ratings'.tr(),
                      count: 32,
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.profileReviews);
                      },
                    ),
                    ListView.separated(
                      padding: EdgeInsets.all(0),
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return RatingListItemWidget(
                          review: reviews[index],
                        );
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (!restaurant.isReviewed)
            Material(
              color: kColorPrimary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.addReview);
                },
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  width: double.infinity,
                  height: 66,
                  child: Center(
                    child: Text(
                      'rate_your_experience'.tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
