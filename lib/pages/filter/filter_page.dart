import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class FilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('filter'.tr()),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  CategoriesFilterWidget(),
                  SizedBox(
                    height: 40,
                  ),
                  DistanceWidget(),
                  SizedBox(
                    height: 40,
                  ),
                  RatingWidget(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          FooterWidget(),
        ],
      ),
    );
  }
}
