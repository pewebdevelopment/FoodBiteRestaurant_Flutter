import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/custom_raw_material_button.dart';
import '../../components/custom_text_form_field.dart';
import '../../utils/constants.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var _nameController = TextEditingController(text: 'John Williams');
  var _emailController = TextEditingController(text: 'John.williams@gmail.com');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('edit_profile'.tr()),
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
                    padding: const EdgeInsets.fromLTRB(39, 15, 39, 25),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 124,
                          height: 124,
                          child: Stack(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 62,
                                backgroundImage:
                                    AssetImage('assets/images/avatar.jpg'),
                                backgroundColor: Colors.transparent,
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: ClipOval(
                                  child: Material(
                                    color: kColorPrimary,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: 43,
                                        height: 43,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: Colors.white, width: 1),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.mode_edit,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomTextFormField(
                          controller: _nameController,
                          prefixIcon: 'icon_person',
                          prefixIconColor: kColorBlueyGrey,
                          hintText: 'your_name'.tr(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFormField(
                          controller: _emailController,
                          prefixIcon: 'icon_email',
                          prefixIconColor: kColorBlueyGrey,
                          hintText: 'your_email'.tr(),
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
