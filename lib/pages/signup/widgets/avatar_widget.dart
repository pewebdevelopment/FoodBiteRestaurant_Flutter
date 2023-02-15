import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class AvatarWidget extends StatefulWidget {
  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 152,
      child: Stack(
        children: <Widget>[
          // CircleAvatar(
          //   radius: 126,
          //   backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=2'),
          //   backgroundColor: Colors.transparent,
          // ),
          ClipRect(
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                child: Container(
                  alignment: Alignment.center,
                  width: 152,
                  height: 152,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Image.asset(
                    'assets/images/icon_person.png',
                    width: 31,
                    height: 31,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: ClipOval(
              child: Material(
                color: kColorPrimary,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 43,
                    height: 43,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.mode_edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
