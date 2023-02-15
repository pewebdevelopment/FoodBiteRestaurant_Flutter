import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/friends_list_item_widget.dart';
import '../../components/section_widget.dart';
import '../../data/pref_manager.dart';
import '../../model/user.dart';
import '../../routes/routes.dart';
import '../../utils/constants.dart';

class FindFriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('find_friends'.tr()),
        centerTitle: true,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionWidget(
              title: 'contacts'.tr(),
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 15, bottom: 25),
              itemCount: users.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                if (!users[index].isFriend) return Container();
                return FriendsListItemWidget(
                  user: users[index],
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(Routes.profile, arguments: users[index]);
                  },
                );
              },
            ),
            SectionWidget(
              title: 'suggestions'.tr(),
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: 15, bottom: 25),
              itemCount: users.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                if (users[index].isFriend) return Container();
                return FriendsListItemWidget(
                  user: users[index],
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(Routes.profile, arguments: users[index]);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
