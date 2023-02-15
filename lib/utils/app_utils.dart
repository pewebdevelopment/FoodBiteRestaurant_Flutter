import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class AppUtils {
  static bool isRTL(BuildContext context) {
    return intl.Bidi.isRtlLanguage(
        Localizations.localeOf(context).languageCode);
  }
}
