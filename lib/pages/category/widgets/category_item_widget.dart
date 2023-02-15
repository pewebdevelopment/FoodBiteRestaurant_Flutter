import 'package:flutter/material.dart';

import '../../../model/category.dart';

class CategoryItemWidget extends StatelessWidget {
  final Category category;
  final void Function() onPressed;

  const CategoryItemWidget({
    Key? key,
    required this.category,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            category.image,
            width: double.infinity,
            height: 77,
            fit: BoxFit.fill,
          ),
        ),
        RawMaterialButton(
          onPressed: onPressed,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.all(0),
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  category.gradient[0].withOpacity(0.65),
                  category.gradient[1].withOpacity(0.65),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Container(
              height: 77,
              alignment: Alignment.center,
              child: Text(
                category.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
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
