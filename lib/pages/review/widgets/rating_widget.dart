import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../components/rating_container.dart';
import '../../../utils/constants.dart';

class RatingContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RatingContainer(),
        SizedBox(
          height: 16,
        ),
        Text(
          'rate_your_experience'.tr(),
          style: TextStyle(
            color: kColorBlueyGrey,
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }
}
