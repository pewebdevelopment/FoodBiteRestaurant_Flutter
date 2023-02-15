import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_background.dart';
import '../../components/custom_raw_material_button.dart';
import '../../components/transparent_text_form_field.dart';
import '../../utils/app_utils.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomBackground(
            image: 'background_login',
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Theme(
                  data: ThemeData(
                    appBarTheme: AppBarTheme().copyWith(
                      iconTheme: IconThemeData(color: Colors.white),
                      elevation: 0,
                      titleTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    title: Text('forgot_password'.tr()),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: LayoutBuilder(
                      builder: (BuildContext context,
                          BoxConstraints viewportConstraints) {
                        return SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: viewportConstraints.maxHeight,
                            ),
                            child: IntrinsicHeight(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: SizedBox(height: 55),
                                    ),
                                    Text(
                                      'password_reset_message'.tr(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        fontStyle: FontStyle.normal,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 55),
                                    TransparentTextFormField(
                                      prefixIcon: 'icon_email',
                                      hintText: 'email'.tr(),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: SizedBox(height: 20),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: CustomRawMaterialButton(
                                        title: 'send'.tr(),
                                        padding: EdgeInsets.only(
                                            top: AppUtils.isRTL(context)
                                                ? 18
                                                : 22,
                                            bottom: AppUtils.isRTL(context)
                                                ? 15
                                                : 19),
                                        borderRadius: 12,
                                        onPressed: () {},
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
