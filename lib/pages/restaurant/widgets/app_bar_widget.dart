import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../model/restaurant.dart';
import '../../../utils/constants.dart';
import 'app_bar_button_widget.dart';

class AppBarWidget extends StatefulWidget {
  final Restaurant restaurant;
  const AppBarWidget({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  late bool _isFavorite;

  @override
  void initState() {
    _isFavorite = widget.restaurant.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          //brightness: Brightness.light,
        ),
      ),
      child: SliverAppBar(
        expandedHeight: 303,
        floating: false,
        pinned: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              _isFavorite ? Icons.bookmark : Icons.bookmark_border,
            ),
            onPressed: () {
              setState(() {
                _isFavorite = !_isFavorite;
              });
            },
          ),
        ],
        backgroundColor: kColorPrimary,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            height: 303,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  widget.restaurant.images[0],
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
                Positioned(
                  bottom: 16,
                  left: 30,
                  right: 30,
                  child: ClipRect(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          width: double.infinity,
                          height: 47,
                          decoration: BoxDecoration(
                            color: Color(0xff5663ff).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: AppBarButtonWidget(
                                  iconData: Icons.phone,
                                  text: '0555 505 550',
                                ),
                              ),
                              Container(
                                height: double.infinity,
                                child: VerticalDivider(
                                  thickness: 0.5,
                                  color: Colors.white.withOpacity(0.5),
                                ),
                              ),
                              AppBarButtonWidget(
                                iconData: Icons.directions,
                                text: 'direction'.tr(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
