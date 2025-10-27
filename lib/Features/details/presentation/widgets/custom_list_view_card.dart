import 'package:aniflix_app/Features/details/presentation/widgets/custom_card_info.dart';
import 'package:aniflix_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewCard extends StatelessWidget {
  const CustomListViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
