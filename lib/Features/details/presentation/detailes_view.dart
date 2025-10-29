import 'package:aniflix_app/Features/details/presentation/widgets/custom_button.dart';
import 'package:aniflix_app/Features/details/presentation/widgets/custom_description_iteam.dart';
import 'package:aniflix_app/Features/details/presentation/widgets/custom_image_iteam.dart';
import 'package:aniflix_app/Features/details/presentation/widgets/custom_list_view_card.dart';
import 'package:aniflix_app/Features/details/presentation/widgets/custom_nameandtitle_iteam.dart';
import 'package:aniflix_app/constant.dart';
import 'package:flutter/material.dart';

class DetailesView extends StatelessWidget {
  final String imagename;
  final String name;

  const DetailesView({super.key, required this.imagename, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomImageIteam(imageUrl: imagename,),
            CustomNameandtitleIteam(title:name ,),
            SizedBox(height: 20),
            CustomDescriptionIteam(),
            CustomListViewCard(),
            SizedBox(height: 16),
            GradientButton(),
          ],
        ),
      ),
    );
  }
}
