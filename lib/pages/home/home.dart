import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../favorite/favorite_page.dart';
import '../notifications/notifications_page.dart';
import '../profile/profile_page.dart';
import '../review/review_page.dart';
import 'home_page.dart';
import 'widgets/nav_bar_item_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  static void changeLocale(BuildContext context, Locale locale) {
    _HomeState? state = context.findAncestorStateOfType<_HomeState>();
    state?.changeLanguage(locale);
  }
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  bool _review = false;

  late PageController _controller;
  //List<Widget> _pages;
  final _pages = [
    HomePage(),
    FavoritePage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  late AnimationController _arrowAnimationController;
  late Animation<double> _arrowAnimation;

  late AnimationController _animationController;
  late Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: _selectedIndex,
    );

    _arrowAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _arrowAnimation =
        Tween(begin: 0.0, end: pi / 4).animate(_arrowAnimationController);

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    _offset = Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero)
        .animate(_animationController);
  }

  changeLanguage(Locale locale) {
    EasyLocalization.of(context)?.setLocale(locale);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _arrowAnimationController.dispose();
    _animationController.dispose();
  }

  _selectPage(int index) {
    setState(() {
      if (_controller.hasClients) _controller.jumpToPage(index);
      _selectedIndex = index;
    });
  }

  _toggleFAB() {
    FocusScope.of(context).requestFocus(FocusNode());

    _arrowAnimationController.isCompleted
        ? _arrowAnimationController.reverse()
        : _arrowAnimationController.forward();

    _animationController.isCompleted
        ? _animationController.reverse()
        : _animationController.forward();
    setState(() {
      _review = !_review;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: _pages,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SlideTransition(
              position: _offset,
              child: ReviewPage(
                onPressed: _toggleFAB,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: AnimatedBuilder(
        animation: _arrowAnimationController,
        builder: (context, child) {
          return Transform.rotate(
            angle: _arrowAnimation.value,
            child: FloatingActionButton(
              onPressed: _toggleFAB,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ),
              backgroundColor: kColorPrimary,
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        //height: 50,
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(20),
        //     topRight: Radius.circular(20),
        //   ),
        //   border: Border.all(color: Color(0xfff3f3f3), width: 0.3),
        //   boxShadow: [
        //     BoxShadow(
        //       color: Color(0x0a000000),
        //       offset: Offset(0, -11),
        //       blurRadius: 50,
        //       spreadRadius: 0,
        //     ),
        //   ],
        // ),
        child: BottomAppBar(
          elevation: 0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: NavBarItemWidget(
                  onTap: () {
                    _selectPage(0);
                  },
                  image:
                      _selectedIndex == 0 ? 'icon_home_selected' : 'icon_home',
                ),
              ),
              Expanded(
                flex: 1,
                child: NavBarItemWidget(
                  onTap: () {
                    _selectPage(1);
                  },
                  image: _selectedIndex == 1
                      ? 'icon_favorite_selected'
                      : 'icon_favorite',
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 1,
                child: NavBarItemWidget(
                  onTap: () {
                    _selectPage(2);
                  },
                  image: _selectedIndex == 2
                      ? 'icon_notification_selected'
                      : 'icon_notification',
                ),
              ),
              Expanded(
                flex: 1,
                child: NavBarItemWidget(
                  onTap: () {
                    _selectPage(3);
                  },
                  image: _selectedIndex == 3
                      ? 'icon_profile_selected'
                      : 'icon_profile',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
