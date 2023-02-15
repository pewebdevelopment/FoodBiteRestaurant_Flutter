import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:foodybite/data/pref_manager.dart';

import 'widgets/language_list_item.dart';

enum Language {
  english,
  german,
  arabic,
  spanish,
  portugese,
  italian,
  french,
}

class ChangeLanguagePage extends StatefulWidget {
  @override
  _ChangeLanguagePageState createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  late Language _language;
  @override
  void initState() {
    super.initState();
    switch (Prefs.getString(Prefs.LANGUAGE, def: 'en')) {
      case 'en':
        _language = Language.english;
        break;

      case 'de':
        _language = Language.german;
        break;

      case 'ar':
        _language = Language.arabic;
        break;

      case 'es':
        _language = Language.spanish;
        break;

      case 'pt':
        _language = Language.portugese;
        break;

      case 'it':
        _language = Language.italian;
        break;

      case 'fr':
        _language = Language.french;
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change_language'.tr()),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          LanguageListItem(
            title: 'English',
            checked: _language == Language.english,
            onTap: () {
              setState(() {
                _language = Language.english;
                EasyLocalization.of(context)!.setLocale(
                    EasyLocalization.of(context)!.supportedLocales[0]);
                Prefs.setString(Prefs.LANGUAGE, 'en');
              });
            },
          ),
          LanguageListItem(
            title: 'German',
            checked: _language == Language.german,
            onTap: () {
              setState(() {
                _language = Language.german;
                EasyLocalization.of(context)!.setLocale(
                    EasyLocalization.of(context)!.supportedLocales[1]);
                Prefs.setString(Prefs.LANGUAGE, 'de');
              });
            },
          ),
          LanguageListItem(
            title: 'Arabic',
            checked: _language == Language.arabic,
            onTap: () {
              setState(() {
                _language = Language.arabic;
                EasyLocalization.of(context)!.setLocale(
                    EasyLocalization.of(context)!.supportedLocales[2]);
                Prefs.setString(Prefs.LANGUAGE, 'ar');
              });
            },
          ),
          LanguageListItem(
            title: 'Spanish',
            checked: _language == Language.spanish,
            onTap: () {
              setState(() {
                _language = Language.spanish;
                EasyLocalization.of(context)!.setLocale(
                    EasyLocalization.of(context)!.supportedLocales[3]);
                Prefs.setString(Prefs.LANGUAGE, 'es');
              });
            },
          ),
          LanguageListItem(
            title: 'Portugese',
            checked: _language == Language.portugese,
            onTap: () {
              setState(() {
                _language = Language.portugese;
                EasyLocalization.of(context)!.setLocale(
                    EasyLocalization.of(context)!.supportedLocales[4]);
                Prefs.setString(Prefs.LANGUAGE, 'pt');
              });
            },
          ),
          LanguageListItem(
            title: 'Italian',
            checked: _language == Language.italian,
            onTap: () {
              setState(() {
                _language = Language.italian;
                EasyLocalization.of(context)!.setLocale(
                    EasyLocalization.of(context)!.supportedLocales[5]);
                Prefs.setString(Prefs.LANGUAGE, 'it');
              });
            },
          ),
          LanguageListItem(
            title: 'French',
            checked: _language == Language.french,
            onTap: () {
              setState(() {
                _language = Language.french;
                EasyLocalization.of(context)!.setLocale(
                    EasyLocalization.of(context)!.supportedLocales[6]);
                Prefs.setString(Prefs.LANGUAGE, 'fr');
              });
            },
          ),
        ],
      ),
    );
  }
}
