import 'package:aniflix_app/Features/details/presentation/widgets/custom_card_info.dart';
import 'package:aniflix_app/Features/details/presentation/widgets/custom_description_iteam.dart';
import 'package:aniflix_app/Features/details/presentation/widgets/custom_image_iteam.dart';
import 'package:aniflix_app/Features/details/presentation/widgets/custom_nameandtitle_iteam.dart';
import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/assets.dart';
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

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
              ),
              itemBuilder: (context, index) {
                return CustomCardInfo(
                  imageUrl: AssetsData.imageRelease,
                  name: "Maria Espaes",
                  role: "As Morbius",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
