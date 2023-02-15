import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:foodybite/utils/app_utils.dart';

import '../../components/custom_background.dart';
import '../../components/custom_raw_material_button.dart';
import '../../routes/routes.dart';
import 'widgets/input_widget.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomBackground(
            image: 'background_login',
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
                                height: 77,
                              ),
                              Text(
                                'app_name'.tr(),
                                style: TextStyle(
                                  fontFamily: 'JosefinSans',
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: SizedBox(height: 40),
                              ),
                              InputWidget(),
                              Expanded(
                                child: SizedBox(
                                  height: 5,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: CustomRawMaterialButton(
                                  title: 'login'.tr(),
                                  padding: EdgeInsets.only(
                                      top: AppUtils.isRTL(context) ? 18 : 22,
                                      bottom:
                                          AppUtils.isRTL(context) ? 15 : 19),
                                  borderRadius: 12,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed(Routes.home);
                                  },
                                ),
                              ),
                              Expanded(
                                child: SizedBox(height: 20),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(Routes.signup);
                                },
                                child: Container(
                                  padding: EdgeInsets.only(bottom: 3),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color: Colors.white, width: 1.5),
                                    ),
                                  ),
                                  child: Text(
                                    'create_new_account'.tr(),
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
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
    );
  }
}
