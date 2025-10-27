import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomNameRelease extends StatelessWidget {
  const CustomNameRelease({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Morbius", style: Style.textStyle16.copyWith(fontSize: 30));
  }
}
