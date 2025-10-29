import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  final double score;
  const CustomRating({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              Icons.star_purple500_outlined,
              color: colorRatingStar,
              size: 30,
            ),
          ),
        ),
        SizedBox(height: 7),
        Text(
          "$score",
          style: Style.textStyle12.copyWith(color: colorFontRegulartitle),
        ),
      ],
    );
  }
}

//
