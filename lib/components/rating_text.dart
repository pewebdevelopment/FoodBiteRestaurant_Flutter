import 'package:flutter/material.dart';

class RatingText extends StatelessWidget {
  final double rating;
  final double? textSize;
  final double? iconSize;
  final Color? color;
  const RatingText({
    Key? key,
    required this.rating,
    this.textSize,
    this.iconSize,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: iconSize ?? 15,
        ),
        SizedBox(
          width: 3.5,
        ),
        Text(
          rating.toString(),
          style: Theme.of(context).textTheme.headline6!.copyWith(
                fontSize: textSize ?? 10,
                fontWeight: FontWeight.w700,
                color: color ?? Theme.of(context).textTheme.headline6!.color,
              ),
        ),
      ],
    );
  }
}
