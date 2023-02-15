import 'package:flutter/material.dart';

import '../model/restaurant.dart';
import '../utils/constants.dart';
import 'label_category.dart';

class RestaurantCardReview extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantCardReview({Key? key, required this.restaurant})
      : super(key: key);
  @override
  _RestaurantCardReviewState createState() => _RestaurantCardReviewState();
}

class _RestaurantCardReviewState extends State<RestaurantCardReview> {
  String _image = 'icon_add';
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 261,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color(0x1f000000),
            offset: Offset(0, 3),
            blurRadius: 33,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 186,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.asset(
                widget.restaurant.images[0],
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 13,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              widget.restaurant.name,
                              style: TextStyle(
                                color: Color(0xff3e3f68),
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            LabelCategory(
                              category: widget.restaurant.category,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          widget.restaurant.address,
                          style: TextStyle(
                            color: kColorBlueyGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_checked)
                        _image = 'icon_add';
                      else
                        _image = 'icon_checkbox_green';
                      setState(() {
                        _checked = !_checked;
                      });
                    },
                    child: Image.asset(
                      'assets/images/$_image.png',
                      width: 34.5,
                      height: 34.5,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
