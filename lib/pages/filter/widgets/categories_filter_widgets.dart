import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'filter_button_widget.dart';

class CategoriesFilterWidget extends StatefulWidget {
  @override
  _CategoriesFilterWidgetState createState() => _CategoriesFilterWidgetState();
}

class _CategoriesFilterWidgetState extends State<CategoriesFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Column(
        children: <Widget>[
          Text(
            'select_category'.tr(),
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 28,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FilterButtonWidget(
                  title: 'Italian',
                  color1: Color(0xffff5673),
                  color2: Color(0xffff8c48),
                  checked: false,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: FilterButtonWidget(
                  title: 'Chinese',
                  color1: Color(0xffff4665),
                  color2: Color(0xff832bf6),
                  checked: false,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: FilterButtonWidget(
                  title: 'Maxican',
                  color1: Color(0xff3b40fe),
                  color2: Color(0xff2dcef8),
                  checked: false,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FilterButtonWidget(
                  title: 'Thai',
                  color1: Color(0xff21e590),
                  color2: Color(0xff009dc5),
                  checked: false,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: FilterButtonWidget(
                  title: 'Arabian',
                  color1: Color(0xffd236d2),
                  color2: Color(0xffff870e),
                  checked: false,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: FilterButtonWidget(
                  title: 'Indian',
                  color1: Color(0xff5c51ff),
                  color2: Color(0xfffe327e),
                  checked: false,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FilterButtonWidget(
                  title: 'American',
                  color1: Color(0xff6143ff),
                  color2: Color(0xff2ce3f1),
                  checked: false,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: FilterButtonWidget(
                  title: 'Korean',
                  color1: Color(0xffff8c48),
                  color2: Color(0xffff5673),
                  checked: false,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
