import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../model/user.dart';
import '../utils/constants.dart';
import 'custom_outline_raw_material_button.dart';
import 'custom_raw_material_button.dart';

class FollowersListItemWidget extends StatefulWidget {
  final User user;
  final void Function() onTap;

  const FollowersListItemWidget({
    Key? key,
    required this.user,
    required this.onTap,
  }) : super(key: key);

  @override
  _FollowersListItemWidgetState createState() =>
      _FollowersListItemWidgetState();
}

class _FollowersListItemWidgetState extends State<FollowersListItemWidget> {
  late bool _following;
  @override
  void initState() {
    _following = widget.user.isFollowing;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 22,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 26,
              backgroundImage: AssetImage(widget.user.avatar),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(
              width: 13,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.user.getName(),
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontSize: 17),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    '${widget.user.reviews} ${'rated_restaurant'.tr()}',
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
            _following
                ? CustomOutlineRawMaterialButton(
                    title: 'unfollow'.tr(),
                    onPressed: () {
                      setState(() {
                        _following = !_following;
                      });
                    },
                    padding: EdgeInsets.only(top: 9, bottom: 8),
                  )
                : CustomRawMaterialButton(
                    title: 'follow'.tr(),
                    onPressed: () {
                      setState(() {
                        _following = !_following;
                      });
                    },
                    padding: EdgeInsets.only(top: 9, bottom: 8),
                  ),
          ],
        ),
      ),
    );
  }
}
