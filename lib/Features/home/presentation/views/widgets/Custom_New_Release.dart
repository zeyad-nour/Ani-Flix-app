import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomNewRelease extends StatelessWidget {
  const CustomNewRelease({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 25),
          alignment: Alignment.centerLeft,
          child: Text(
            "New relase.",
            style: Style.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
