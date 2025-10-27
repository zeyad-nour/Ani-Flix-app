import 'package:aniflix_app/constant.dart' show colorFontRegularsecound;
import 'package:aniflix_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

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
