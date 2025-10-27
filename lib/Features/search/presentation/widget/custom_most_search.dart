import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/assets.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomMostSearch extends StatelessWidget {
  const CustomMostSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) => Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 13),
                width: MediaQuery.sizeOf(context).width * 0.30,
                height: MediaQuery.sizeOf(context).height * 0.15,
                decoration: BoxDecoration(
                  color: colorFontRegulartitle,
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.forYouVideoCover),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 14),
              Text("Secret Wars", style: Style.textStyle16),
              SizedBox(height: 7),
              Text(
                "2022",
                style: Style.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: colorFontRegulartitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
