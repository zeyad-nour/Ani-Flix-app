import 'package:aniflix_app/Features/details/presentation/widgets/custom_description_iteam.dart';
import 'package:aniflix_app/Features/details/presentation/widgets/custom_image_iteam.dart';
import 'package:aniflix_app/Features/details/presentation/widgets/custom_nameandtitle_iteam.dart';
import 'package:aniflix_app/constant.dart';
import 'package:flutter/material.dart';

class DetailesView extends StatelessWidget {
  const DetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          CustomImageIteam(),
          CustomNameandtitleIteam(),
          SizedBox(height: 20),
          CustomDescriptionIteam(),
        ],
      ),
    );
  }
}
