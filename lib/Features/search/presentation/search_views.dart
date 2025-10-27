import 'package:aniflix_app/Features/search/presentation/widget/custom_search_field.dart';
import 'package:aniflix_app/constant.dart';
import 'package:flutter/material.dart';

class SearchViews extends StatelessWidget {
  const SearchViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
              child: CustomSearchField(),
            ),
          ],
        ),
      ),
    );
  }
}
