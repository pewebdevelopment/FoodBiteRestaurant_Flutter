import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final void Function() onPressed;

  const AppBarWidget({Key? key, required this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        TextButton(
          onPressed: onPressed,
          child: Text(
            'cancel'.tr(),
            style: Theme.of(context).textTheme.button,
          ),
        ),
        Expanded(
          child: Center(
            child: Text('new_review'.tr()),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'post'.tr(),
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ],
    );
  }
}
