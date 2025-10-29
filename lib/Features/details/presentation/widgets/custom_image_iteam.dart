import 'package:aniflix_app/constant.dart';
import 'package:flutter/material.dart';

class CustomImageIteam extends StatelessWidget {
  final String imageUrl;
  const CustomImageIteam({super.key, required this.imageUrl});

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
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
