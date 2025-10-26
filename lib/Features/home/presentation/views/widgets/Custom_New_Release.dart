// ignore_for_file: file_names

import 'package:aniflix_app/core/utils/assets.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomNewRelease extends StatelessWidget {
  const CustomNewRelease({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 25),
          alignment: Alignment.centerLeft,
          child: Text(
            "New relase.",
            style: Style.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(AssetsData.imageRelease)),
          ),
        ),
      ],
    );
  }
}
