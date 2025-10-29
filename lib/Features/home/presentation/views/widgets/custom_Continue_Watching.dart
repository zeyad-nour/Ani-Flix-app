// ignore_for_file: file_names

import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_wathcingvideosSuggetions.dart';

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
            "     Suggetions Watching",
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
