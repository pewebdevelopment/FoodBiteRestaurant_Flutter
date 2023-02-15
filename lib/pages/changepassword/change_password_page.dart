import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_raw_material_button.dart';
import '../../components/custom_text_form_field.dart';
import '../../utils/constants.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change_password'.tr()),
        centerTitle: true,
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(22, 15, 22, 25),
                    child: Column(
                      children: <Widget>[
                        CustomTextFormField(
                          prefixIcon: 'icon_lock',
                          prefixIconColor: kColorBlueyGrey,
                          hintText: 'current_password'.tr(),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          prefixIcon: 'icon_lock',
                          prefixIconColor: kColorBlueyGrey,
                          hintText: 'new_password'.tr(),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          prefixIcon: 'icon_lock',
                          prefixIconColor: kColorBlueyGrey,
                          hintText: 'confirm_password'.tr(),
                          obscureText: true,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 20,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: CustomRawMaterialButton(
                            title: 'update'.tr(),
                            fontSize: 18,
                            padding: EdgeInsets.symmetric(vertical: 20),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
