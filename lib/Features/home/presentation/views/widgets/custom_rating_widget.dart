import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  const CustomRating({super.key});

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
          "From 342 users",
          style: Style.textStyle12.copyWith(color: colorFontRegulartitle),
        ),
      ],
    );
  }
}
