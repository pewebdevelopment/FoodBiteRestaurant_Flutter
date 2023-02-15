import 'package:flutter/material.dart';

class CategoryItemWidget extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String title;
  final String image;

  const CategoryItemWidget({
    Key? key,
    required this.color1,
    required this.color2,
    required this.title,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/$image.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Opacity(
            opacity: 0.65,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  colors: [
                    color1,
                    color2,
                  ],
                  stops: [0, 1],
                  begin: Alignment(-0.00, -1.00),
                  end: Alignment(0.00, 1.00),
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
            ),
          ),
          Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
