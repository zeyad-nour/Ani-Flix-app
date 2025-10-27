
// ignore_for_file: file_names

import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/assets.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class ContinueWatchingVidwosSuggetion extends StatelessWidget {
  const ContinueWatchingVidwosSuggetion({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
              Text(
                "Grappler Baki",
                style: Style.textStyle12.copyWith(
                  fontWeight: FontWeight.w700,
                  color: colorfontRegularAndBoldbase,
                  fontSize: 20,
                ),
              ),
              Text(
                "T.1 Episode 4",
                style: Style.textStyle12.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
