import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class LanguageListItem extends StatelessWidget {
  final String title;
  final bool checked;
  final void Function() onTap;

  const LanguageListItem({
    Key? key,
    required this.title,
    required this.checked,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 26,
          horizontal: 22,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontSize: 17,
                      color: checked
                          ? kColorPrimary
                          : Theme.of(context).textTheme.subtitle1!.color,
                    ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            checked
                ? Icon(
                    Icons.check_circle,
                    color: kColorPrimary,
                    size: 22,
                  )
                : Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kColorBlueyGrey, width: 1),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
