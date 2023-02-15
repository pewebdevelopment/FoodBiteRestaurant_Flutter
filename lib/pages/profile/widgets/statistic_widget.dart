import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../model/user.dart';
import '../../../routes/routes.dart';
import '../../../utils/constants.dart';

class StatisticWidget extends StatelessWidget {
  final User? user;
  const StatisticWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              if (user == null)
                Navigator.of(context).pushNamed(Routes.profileReviews);
            },
            child: _statisticItem(
                user != null ? user!.reviews.toString() : '250',
                'reviews'.tr()),
          ),
          Container(
            height: 32,
            child: VerticalDivider(
              color: kColorBlueyGrey.withOpacity(0.5),
              thickness: 0.5,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (user == null)
                Navigator.of(context)
                    .pushNamed(Routes.followers, arguments: 'Followers');
            },
            child: _statisticItem(
                user != null ? user!.followers.toString() : '100k',
                'followers'.tr()),
          ),
          Container(
            height: 32,
            child: VerticalDivider(
              color: kColorBlueyGrey.withOpacity(0.5),
              thickness: 0.5,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (user == null)
                Navigator.of(context)
                    .pushNamed(Routes.followers, arguments: 'Following');
            },
            child: _statisticItem(
                user != null ? user!.following.toString() : '30',
                'following'.tr()),
          ),
        ],
      ),
    );
  }

  Container _statisticItem(String count, String text) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            count,
            style: TextStyle(
              color: kColorPrimary,
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: TextStyle(
              color: kColorGrey,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
