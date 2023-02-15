import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../data/pref_manager.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _isDark = Prefs.getBool(Prefs.DARKTHEME, def: false);
    return Container(
      width: double.infinity,
      decoration: new BoxDecoration(
        color: Colors.white.withOpacity(_isDark ? 0.12 : 1),
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Color(0x0c000000),
              offset: Offset(0, 10),
              blurRadius: 33,
              spreadRadius: 0),
          BoxShadow(
              color: Color(0x0c000000),
              offset: Offset(0, -10),
              blurRadius: 33,
              spreadRadius: 0),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Image.asset('assets/images/icon_search_grey.png'),
          hintText: 'find_restaurants'.tr(),
          hintStyle: TextStyle(
            color: Color(0xffbcbcbc),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          contentPadding: EdgeInsets.fromLTRB(18, 19, 18, 16),
        ),
      ),
    );
  }
}
