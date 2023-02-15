import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'widgets/rating_widget.dart';

class AddReviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reviews_ratings'.tr()),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    RatingContainerWidget(),
                    SizedBox(
                      height: 40,
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
                    SizedBox(
                      height: 36,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Material(
            color: kColorPrimary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Container(
                width: double.infinity,
                height: 66,
                child: Center(
                  child: Text(
                    'update'.tr(),
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
