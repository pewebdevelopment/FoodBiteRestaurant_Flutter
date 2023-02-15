import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_background.dart';
import '../../components/custom_raw_material_button.dart';
import '../../routes/routes.dart';
import '../../utils/app_utils.dart';
import '../../utils/constants.dart';
import 'widgets/widgets.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomBackground(
            image: 'background_signup',
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              child: LayoutBuilder(
                builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              AvatarWidget(),
                              SizedBox(
                                height: 64,
                              ),
                              InputWidget(),
                              Expanded(
                                flex: 2,
                                child: SizedBox(
                                  height: 5,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: CustomRawMaterialButton(
                                  title: 'sign_up'.tr(),
                                  padding: EdgeInsets.only(
                                      top: AppUtils.isRTL(context) ? 18 : 22,
                                      bottom:
                                          AppUtils.isRTL(context) ? 15 : 19),
                                  borderRadius: 12,
                                  onPressed: () {
                                    Navigator.of(context).pushReplacementNamed(
                                        Routes.setLocation);
                                  },
                                ),
                              ),
                              Expanded(
                                child: SizedBox(height: 20),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'already_have_an_account'.tr(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'login'.tr(),
                                      style: TextStyle(
                                        color: kColorPrimary,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                ],
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
    );
  }
}
