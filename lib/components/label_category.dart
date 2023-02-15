import 'package:flutter/material.dart';

import '../model/category.dart';

class LabelCategory extends StatelessWidget {
  final Category category;

  const LabelCategory({
    Key? key,
    required this.category,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.65,
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 2.5,
              horizontal: 7.5,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                colors: category.gradient,
                stops: [0, 1],
                begin: Alignment(1.00, -0.00),
                end: Alignment(-1.00, 0.00),
                // angle: 270,
                // scale: undefined,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x0c000000),
                  offset: Offset(0, 3),
                  blurRadius: 33,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Center(
              child: Text(
                category.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
