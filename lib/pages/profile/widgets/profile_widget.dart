import 'package:flutter/material.dart';
import 'package:foodybite/model/user.dart';

import '../../../utils/constants.dart';

class ProfileWidget extends StatelessWidget {
  final User? user;
  const ProfileWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: CircleAvatar(
            radius: 62,
            backgroundImage: AssetImage(
                user != null ? user!.avatar : 'assets/images/avatar.jpg'),
            backgroundColor: Colors.transparent,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          user != null ? user!.getName() : 'John Williams',
          style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 22),
        ),
        SizedBox(
          height: 7,
        ),
        Text(
          user != null ? user!.email : 'john.williams@gmail.com',
          style: TextStyle(
            color: kColorGrey,
            fontSize: 13,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }
}
