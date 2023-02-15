import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../model/notification.dart';
import 'widgets/notification_list_item_widget.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('notifications'.tr()),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 15, bottom: 25),
        itemCount: notifications.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return NotificationsListItemWidget(
            notification: notifications[index],
          );
        },
      ),
    );
  }
}
