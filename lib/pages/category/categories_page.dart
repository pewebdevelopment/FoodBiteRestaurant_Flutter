import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../data/pref_manager.dart';
import '../../model/category.dart';
import '../../routes/routes.dart';
import '../../utils/constants.dart';
import 'widgets/category_item_widget.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('categories'.tr()),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              'assets/images/icon_search.png',
              color: Prefs.getBool(Prefs.DARKTHEME, def: false)
                  ? Colors.white.withOpacity(0.87)
                  : kColorPrimaryDark,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          height: 19,
        ),
        padding: EdgeInsets.fromLTRB(23, 30, 23, 25),
        itemCount: categories.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CategoryItemWidget(
            category: categories[index],
            onPressed: () {
              Navigator.of(context).pushNamed(
                Routes.category,
                arguments: categories[index],
              );
            },
          );
        },
      ),
    );
  }
}
