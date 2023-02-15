import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class DistanceWidget extends StatefulWidget {
  @override
  _DistanceWidgetState createState() => _DistanceWidgetState();
}

class _DistanceWidgetState extends State<DistanceWidget> {
  int _distance = 20;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'distance'.tr(),
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(
          height: 18,
        ),
        Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Slider(
                value: _distance.toDouble(),
                min: 0,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    _distance = value.floor();
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  children: <Widget>[
                    Text(
                      '0',
                      style: TextStyle(
                        color: kColorGrey,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      '100',
                      style: TextStyle(
                        color: kColorGrey,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
