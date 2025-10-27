import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomtitleRelease extends StatelessWidget {
  const CustomtitleRelease({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Marvel Studios",
      style: Style.textStyle12.copyWith(fontSize: 15),
    );
  }
}
