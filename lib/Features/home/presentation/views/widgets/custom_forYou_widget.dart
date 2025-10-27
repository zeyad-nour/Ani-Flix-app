import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_video_cover_ForYou.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomForyouWidget extends StatelessWidget {
  const CustomForyouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "   For You",
              style: Style.textStyle16.copyWith(fontSize: 25),
            ),
          ),
          SizedBox(height: 20),
          CustomVideoCoverForyou(),
        ],
      ),
    );
  }
}
