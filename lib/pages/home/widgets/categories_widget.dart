import 'package:flutter/material.dart';

import 'category_item_widget.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 152,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(top: 18, bottom: 34, left: 23, right: 23),
        children: <Widget>[
          CategoryItemWidget(
            title: 'Italian',
            image: 'category_italian',
            color1: Color(0xffff5673),
            color2: Color(0xffff8c48),
          ),
          SizedBox(
            width: 15,
          ),
          CategoryItemWidget(
            title: 'Chinese',
            image: 'category_chinese',
            color1: Color(0xff832bf6),
            color2: Color(0xffff4665),
          ),
          SizedBox(
            width: 15,
          ),
          CategoryItemWidget(
            title: 'Mexican',
            image: 'category_mexican',
            color1: Color(0xff2dcef8),
            color2: Color(0xff3b40fe),
          ),
        ],
      ),
    );
  }
}
