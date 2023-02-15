import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../components/transparent_text_form_field.dart';
import '../../../routes/routes.dart';

class InputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
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
          height: 5,
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.forgotPassword);
          },
          child: Text(
            'forgot_password'.tr(),
            style: TextStyle(
              fontFamily: 'JosefinSans',
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
