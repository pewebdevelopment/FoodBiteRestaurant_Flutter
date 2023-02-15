import 'package:flutter/material.dart';

import '../../components/followers_list_item_widget.dart';
import '../../model/user.dart';
import '../../routes/routes.dart';

class FollowersPage extends StatelessWidget {
  final String title;

  const FollowersPage({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 15, bottom: 25),
        itemCount: users.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          if (title == 'Following') {
            if (users[index].isFollowing) {
              return FollowersListItemWidget(
                user: users[index],
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(Routes.profile, arguments: users[index]);
                },
              );
            } else {
              return Container();
            }
          } else {
            if (users[index].isFollower) {
              return FollowersListItemWidget(
                user: users[index],
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(Routes.profile, arguments: users[index]);
                },
              );
            } else {
              return Container();
            }
          }
        },
      ),
    );
  }
}
