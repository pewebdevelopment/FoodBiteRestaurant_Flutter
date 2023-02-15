import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../components/transparent_text_form_field.dart';

class InputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        TransparentTextFormField(
          prefixIcon: 'icon_person',
          hintText: 'name'.tr(),
        ),
        SizedBox(
          height: 18,
        ),
        TransparentTextFormField(
          prefixIcon: 'icon_email',
          hintText: 'email'.tr(),
        ),
        SizedBox(
          height: 18,
        ),
        TransparentTextFormField(
          prefixIcon: 'icon_lock',
          hintText: 'password'.tr(),
          obscureText: true,
        ),
        SizedBox(
          height: 18,
        ),
        TransparentTextFormField(
          prefixIcon: 'icon_lock',
          hintText: 'confirm_password'.tr(),
          obscureText: true,
        ),
      ],
    );
  }
}
