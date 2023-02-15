import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/restaurant_card_review.dart';
import '../../model/restaurant.dart';
import '../../utils/constants.dart';
import 'widgets/widgets.dart';

class ReviewPage extends StatelessWidget {
  final void Function() onPressed;

  const ReviewPage({Key? key, required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: AppBarWidget(
          onPressed: onPressed,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Column(
                children: <Widget>[
                  SearchWidget(),
                  SizedBox(
                    height: 23,
                  ),
                  RestaurantCardReview(
                    restaurant: restaurants[0],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 34,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Column(
                children: <Widget>[
                  Text(
                    'ratings'.tr(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  RatingContainerWidget(),
                  SizedBox(
                    height: 34,
                  ),
                  Text(
                    'review'.tr(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  TextField(
                    minLines: 4,
                    maxLines: 4,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'write_your_experience'.tr(),
                      hintStyle: TextStyle(
                        color: kColorGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 36,
            ),
          ],
        ),
      ),
    );
  }
}
