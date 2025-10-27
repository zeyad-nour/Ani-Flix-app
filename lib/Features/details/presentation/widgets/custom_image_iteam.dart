import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomImageIteam extends StatelessWidget {
  const CustomImageIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.43,
      decoration: BoxDecoration(
        color: colorFontRegulartitle,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        image: DecorationImage(
          image: AssetImage(AssetsData.imageRelease),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
