// ignore_for_file: file_names

import 'package:aniflix_app/constant.dart';
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
        SizedBox(height: 20),
        Stack(children: [ImageRelease(),]),
      ],
    );
  }
}

class ImageRelease extends StatelessWidget {
  const ImageRelease({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: MediaQuery.of(context).size.height * 0.20,
      padding: EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        color: colorFontRegularsecound,
        borderRadius: BorderRadius.circular(35),
        image: DecorationImage(
          image: AssetImage(AssetsData.imageRelease),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
