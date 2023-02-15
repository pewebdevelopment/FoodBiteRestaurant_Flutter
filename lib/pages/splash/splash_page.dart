import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/pref_manager.dart';
import '../../routes/routes.dart';
import '../../utils/app_themes.dart';
import '../../utils/themebloc/theme_bloc.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => {_loadScreen()});
  }

  _loadScreen() async {
    await Prefs.load();
    context.read<ThemeBloc>().add(ThemeChanged(
        theme: Prefs.getBool(Prefs.DARKTHEME, def: false)
            ? AppTheme.DarkTheme
            : AppTheme.LightTheme));
    Navigator.of(context).pushReplacementNamed(Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/splash_background.jpg'),
                fit: BoxFit.fill,
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.9), BlendMode.dstIn),
              ),
            ),
          ),
          Center(
            child: Text(
              'app_name'.tr(),
              style: TextStyle(
                color: Color(0xff3e3f68),
                fontSize: 45,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
                letterSpacing: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
