import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_rating_widget.dart';
import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomNameandtitleIteam extends StatelessWidget {
  final String title;
  final int episodes;

  const CustomNameandtitleIteam({
    super.key,
    required this.title,
    required this.episodes,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Text(title, style: Style.textStyle16.copyWith(fontSize: 40)),
              SizedBox(width: 10),
              Text(
                "2022",
                style: Style.textStyle14.copyWith(
                  fontSize: 22,
                  color: colorFontRegularsecound,
                ),
              ),
              Spacer(),
              CustomRating(score: 1),
            ],
          ),
          Text(
            episodes == 0 ? "UnKowon" : "$episodes",
            style: Style.textStyle14.copyWith(
              fontSize: 22,
              color: colorFontRegularsecound,
            ),
          ),
        ],
      ),
    );
  }
}

//name , score
