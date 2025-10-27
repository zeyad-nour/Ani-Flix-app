import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomDescriptionIteam extends StatelessWidget {
  const CustomDescriptionIteam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.99,
      height: MediaQuery.sizeOf(context).height * 0.09,

      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        "Lorem ipsum dolor sit amet , Consectetur adipiscing elit, sed do eiusmod tempor incididuntut labore et dolore mangna aliqua. Ut enim admiinim veniam, quis nostrud exercitatuion ullamco laboris nisi ut aliquip ex....",
        style: Style.textStyle16.copyWith(
          color: colorFontRegularsecound,
          fontSize: 20,
        ),
        maxLines: 5,
      ),
    );
  }
}
