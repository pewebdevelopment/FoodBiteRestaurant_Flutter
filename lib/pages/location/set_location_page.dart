import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_background.dart';
import '../../components/custom_raw_material_button.dart';
import '../../routes/routes.dart';
import '../../utils/app_utils.dart';

class SetLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomBackground(
            image: 'background_location',
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
                          padding: const EdgeInsets.only(left: 40, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Container(),
                                  ),
                                  ClipRect(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 5, sigmaY: 5),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamedAndRemoveUntil(
                                                    Routes.home,
                                                    (Route<dynamic> route) =>
                                                        false);
                                          },
                                          style: TextButton.styleFrom(
                                            foregroundColor:
                                                Colors.white.withOpacity(0.22),
                                            shape: BeveledRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              vertical: 15,
                                            ),
                                          ),
                                          child: Text(
                                            'skip'.tr(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.normal,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(),
                              ),
                              Text(
                                '${'hi'.tr()} Tawfiq,',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '${'welcome_to'.tr()}\n',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'app_name'.tr(),
                                      style: TextStyle(
                                        color: Color(0xffffcc00),
                                        fontSize: 40,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: SizedBox(height: 20),
                              ),
                              Text(
                                'turn_on_gps_message',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: -0.85,
                                ),
                              ),
                              Expanded(
                                child: SizedBox(height: 20),
                              ),
                              Container(
                                width: double.infinity,
                                child: CustomRawMaterialButton(
                                  title: 'turn_on_gps'.tr(),
                                  padding: EdgeInsets.only(
                                      top: AppUtils.isRTL(context) ? 18 : 22,
                                      bottom:
                                          AppUtils.isRTL(context) ? 15 : 19),
                                  borderRadius: 12,
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamedAndRemoveUntil(Routes.home,
                                            (Route<dynamic> route) => false);
                                  },
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
