import 'package:aniflix_app/constant.dart' show colorFontRegularsecound;
import 'package:aniflix_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ImageRelease extends StatelessWidget {
  final String imageurl;
  const ImageRelease({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    final bool isValidUrl = imageurl.isNotEmpty && imageurl.startsWith('http');

    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      height: MediaQuery.of(context).size.height * 0.20,
      decoration: BoxDecoration(
        color: colorFontRegularsecound,
        borderRadius: BorderRadius.circular(35),
        image: DecorationImage(
          image: isValidUrl
              ? NetworkImage(imageurl)
              : AssetImage(AssetsData.imageRelease) as ImageProvider,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
