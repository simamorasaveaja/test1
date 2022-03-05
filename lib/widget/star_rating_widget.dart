import 'package:flutter/material.dart';
import 'package:setoko/utils/colors.dart';

typedef void RatingChangeCallback(double rating);

class StarRatingWidget extends StatelessWidget {

  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color colorActive;
  final Color colorDeActive;
  final double size;

  const StarRatingWidget({Key? key, this.starCount = 5, this.rating = 0, this.onRatingChanged, this.colorActive = yellowPrimary, this.colorDeActive = grayPrimary, this.size = 12.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Row(children: new List.generate(starCount, (index) => buildStar(context, index)));
  }

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: colorDeActive,
        size: size,
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: colorActive,
        size: size,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: colorActive,
        size: size,
      );
    }
    return new InkResponse(
      onTap: onRatingChanged == null ? null : () => onRatingChanged!(index + 1.0),
      child: icon,
    );
  }
}
