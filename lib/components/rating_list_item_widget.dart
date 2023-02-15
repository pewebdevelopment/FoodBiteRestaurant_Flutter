import 'package:flutter/material.dart';

import '../model/review.dart';
import '../utils/constants.dart';
import 'rating_text_container.dart';

class RatingListItemWidget extends StatelessWidget {
  final Review review;

  const RatingListItemWidget({Key? key, required this.review})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 22,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(review.image),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              width: 13,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    review.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    review.review,
                    style: TextStyle(
                      color: kColorGrey,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 13,
            ),
            RatingTextContainer(rating: review.rating),
          ],
        ),
      ),
    );
  }
}
