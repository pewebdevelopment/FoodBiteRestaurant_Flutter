import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_outline_raw_material_button.dart';
import '../../components/custom_raw_material_button.dart';
import '../../components/restaurant_card.dart';
import '../../model/restaurant.dart';
import '../../model/user.dart';
import 'widgets/widgets.dart';

class UserProfilePage extends StatefulWidget {
  final User user;

  const UserProfilePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  late bool _isFollowing;

  @override
  void initState() {
    _isFollowing = widget.user.isFollowing;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'.tr()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 45,
            ),
            ProfileWidget(
              user: widget.user,
            ),
            SizedBox(
              height: 38,
            ),
            StatisticWidget(
              user: widget.user,
            ),
            SizedBox(
              height: 38,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: _isFollowing
                        ? CustomOutlineRawMaterialButton(
                            title: 'unfollow'.tr(),
                            onPressed: () {
                              setState(() {
                                _isFollowing = !_isFollowing;
                              });
                            },
                          )
                        : CustomRawMaterialButton(
                            title: 'follow'.tr(),
                            onPressed: () {
                              setState(() {
                                _isFollowing = !_isFollowing;
                              });
                            },
                          ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomOutlineRawMaterialButton(
                      title: 'block'.tr(),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.only(top: 22),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xffe2e2e2).withOpacity(0.38)),
                ),
              ),
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 17,
                ),
                padding: EdgeInsets.fromLTRB(23, 15, 23, 25),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return RestaurantCard(
                    restaurant: restaurants[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
