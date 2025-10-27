import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomForyouWidget extends StatelessWidget {
  const CustomForyouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "   For You",
            style: Style.textStyle16.copyWith(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
