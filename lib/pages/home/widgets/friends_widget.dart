import 'package:flutter/material.dart';
import 'package:foodybite/routes/routes.dart';

import '../../../model/user.dart';

class FriendsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(
          width: users[index].isFriend ? 15 : 0,
        ),
        padding: EdgeInsets.only(top: 18, bottom: 34, left: 23, right: 23),
        itemCount: users.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (!users[index].isFriend) return Container();
          return Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x0c000000),
                  offset: Offset(0, 3),
                  blurRadius: 33,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(Routes.profile, arguments: users[index]);
              },
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(users[index].avatar),
                backgroundColor: Colors.transparent,
              ),
            ),
          );
        },
      ),
    );
  }
}
