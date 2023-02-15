import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:foodybite/utils/app_utils.dart';

import '../../../utils/constants.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Material(
            color: kColorPrimary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppUtils.isRTL(context) ? 0 : 30),
              topRight: Radius.circular(AppUtils.isRTL(context) ? 30 : 0),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppUtils.isRTL(context) ? 0 : 30),
                topRight: Radius.circular(AppUtils.isRTL(context) ? 30 : 0),
              ),
              child: Container(
                width: double.infinity,
                height: 66,
                child: Center(
                  child: Text(
                    'reset'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Material(
            color: kColorPrimary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(AppUtils.isRTL(context) ? 30 : 0),
              topRight: Radius.circular(AppUtils.isRTL(context) ? 0 : 30),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppUtils.isRTL(context) ? 30 : 0),
                topRight: Radius.circular(AppUtils.isRTL(context) ? 0 : 30),
              ),
              child: Container(
                width: double.infinity,
                height: 66,
                child: Center(
                  child: Text(
                    'apply'.tr(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
