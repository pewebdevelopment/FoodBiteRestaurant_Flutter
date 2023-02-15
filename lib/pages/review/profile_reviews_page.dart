import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/rating_list_item_widget.dart';
import '../../model/review.dart';

class ProfileReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reviews'.tr()),
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (_, index) => Divider(),
        padding: EdgeInsets.only(top: 15, bottom: 25),
        itemCount: reviews.length,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return RatingListItemWidget(
            review: reviews[index],
          );
        },
      ),
    );
  }
}
