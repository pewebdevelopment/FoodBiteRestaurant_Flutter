import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class SectionTitleWidget extends StatelessWidget {
  final String title;
  final int count;
  final void Function() onPressed;
  final EdgeInsetsGeometry? padding;

  const SectionTitleWidget({
    Key? key,
    required this.title,
    required this.count,
    required this.onPressed,
    this.padding,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 23),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              '${'see_all'.tr()} ($count)',
              style: TextStyle(
                color: Color(0xffbcbcbc),
                fontSize: 13,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
