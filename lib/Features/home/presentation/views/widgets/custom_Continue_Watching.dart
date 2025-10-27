// ignore_for_file: file_names

import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/assets.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomContinueWatching extends StatelessWidget {
  const CustomContinueWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "     Continue Watching",
            style: Style.textStyle14.copyWith(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 13),
          child: ContinueWatchingVidwosSuggetion(),
        ),
      ],
    );
  }
}

class ContinueWatchingVidwosSuggetion extends StatelessWidget {
  const ContinueWatchingVidwosSuggetion({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) => Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.sizeOf(context).width * 0.50,

            height: MediaQuery.sizeOf(context).height * 0.20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: colorFontRegularsecound,
              image: DecorationImage(
                image: AssetImage(AssetsData.suggetionvideoCoverOne),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
