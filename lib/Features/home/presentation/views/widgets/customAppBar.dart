// ignore_for_file: file_names

import 'package:aniflix_app/Features/search/presentation/search_views.dart';
import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/assets.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 24),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: colorFontRegulartitle,

              borderRadius: BorderRadius.circular(250),
              image: DecorationImage(
                image: AssetImage(AssetsData.imageuser),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 14),
          Column(
            children: [
              Text(
                "Welcome back",
                style: Style.textStyle14.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Maria",
                style: Style.textStyle14.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Get.to(
                () => SearchViews(),
                transition: Transition.downToUp,
                duration: kTransitionDurition,
              );
            },
            icon: Icon(Icons.search, size: 40),
          ),
        ],
      ),
    );
  }
}
