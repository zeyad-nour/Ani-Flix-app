import 'package:aniflix_app/Features/search/presentation/widget/custom_most_search.dart';
import 'package:aniflix_app/Features/search/presentation/widget/custom_search_Categories.dart';
import 'package:aniflix_app/Features/search/presentation/widget/custom_search_field.dart';
import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class SearchViews extends StatelessWidget {
  const SearchViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
                child: CustomSearchField(),
              ),
              SizedBox(height: 50),
              CustomSearchCategories(),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "     Most Searched",
                  style: Style.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 10),
              CustomMostSearch(),
              SizedBox(height: 20),
              CustomMostSearch(),
            ],
          ),
        ),
      ),
    );
  }
}
