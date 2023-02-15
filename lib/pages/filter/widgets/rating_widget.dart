import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../components/rating_container.dart';

class RatingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'rating'.tr(),
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 30,
        ),
        RatingContainer(
          margin: EdgeInsets.symmetric(horizontal: 38),
        ),
      ],
    );
  }
}
