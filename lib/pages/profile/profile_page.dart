import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_outline_raw_material_button.dart';
import '../../components/custom_raw_material_button.dart';
import '../../components/restaurant_card.dart';
import '../../model/restaurant.dart';
import '../../routes/routes.dart';
import '../../utils/constants.dart';
import 'widgets/widgets.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my_profile'.tr()),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 45,
            ),
            ProfileWidget(),
            SizedBox(
              height: 38,
            ),
            StatisticWidget(),
            SizedBox(
              height: 38,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: CustomRawMaterialButton(
                      title: 'edit_profile'.tr(),
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.editProfile);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomOutlineRawMaterialButton(
                      title: 'settings'.tr(),
                      onPressed: () async {
                        await Navigator.of(context).pushNamed(Routes.settings);
                        setState(() {});
                      },
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
                    showMore: true,
                    onTapMore: () {
                      _moreDialog(context);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _moreDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          // child: WaitCircularProgress(title: 'Please wait'),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              InkWell(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                onTap: () {},
                child: Container(
                  height: 62,
                  alignment: Alignment.center,
                  child: Text(
                    'edit'.tr(),
                    style: TextStyle(
                      color: kColorPrimary,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Color(0xffbac0cb).withOpacity(0.5),
                height: 1,
                thickness: 1,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 62,
                  alignment: Alignment.center,
                  child: Text(
                    'delete'.tr(),
                    style: TextStyle(
                      color: kColorPrimary,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Divider(
                color: Color(0xffbac0cb).withOpacity(0.5),
                height: 1,
                thickness: 1,
              ),
              InkWell(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 62,
                  alignment: Alignment.center,
                  child: Text(
                    'cancel'.tr(),
                    style: TextStyle(
                      color: kColorBlueyGrey,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
