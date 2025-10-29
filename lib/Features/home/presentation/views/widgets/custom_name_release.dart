import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomNameRelease extends StatelessWidget {
  final String title;
  const CustomNameRelease({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Style.textStyle16.copyWith(fontSize: 30));
  }
}
