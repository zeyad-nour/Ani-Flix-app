// ignore_for_file: file_names

import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_image_release.dart';
import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_name_release.dart';
import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_rating_widget.dart';
import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_title_release.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomReleaseWidget extends StatelessWidget {
  const CustomReleaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 25),
          alignment: Alignment.centerLeft,
          child: Text(
            "New release.",
            style: Style.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.90,
          height: MediaQuery.of(context).size.height * 0.20,
          child: Stack(
            children: [
              Positioned.fill(child: ImageRelease()),
              Positioned(top: 220, left: 400, child: CustomRating()),
              Positioned(top: 196, left: 23, child: CustomNameRelease()),
              Positioned(top: 240, left: 23, child: CustomtitleRelease()),
            ],
          ),
        ),
      ],
    );
  }
}
