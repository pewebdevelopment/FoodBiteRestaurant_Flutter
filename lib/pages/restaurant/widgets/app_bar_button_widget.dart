import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class AppBarButtonWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  const AppBarButtonWidget({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              iconData,
              color: kColorPrimary,
              size: 15,
            ),
          ),
          SizedBox(
            width: 11,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
