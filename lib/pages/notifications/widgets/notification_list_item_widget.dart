import 'package:flutter/material.dart';

import '../../../model/notification.dart' as notif;
import '../../../utils/constants.dart';

class NotificationsListItemWidget extends StatelessWidget {
  final notif.Notification notification;

  const NotificationsListItemWidget({Key? key, required this.notification})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 22,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(notification.image),
            ),
            SizedBox(
              width: 13,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    notification.title,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    notification.text,
                    style: TextStyle(
                      color: kColorGrey,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 13,
            ),
            Text(
              notification.date,
              style: TextStyle(
                color: kColorGrey,
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
