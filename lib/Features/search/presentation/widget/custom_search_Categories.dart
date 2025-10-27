import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/assets.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class CustomSearchCategories extends StatelessWidget {
  const CustomSearchCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.sizeOf(context).width * 0.92,
      height: MediaQuery.sizeOf(context).height * 0.50,
      decoration: BoxDecoration(color: kBackgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Categories.", style: Style.textStyle16.copyWith(fontSize: 23)),
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: MediaQuery.sizeOf(context).height * 0.16,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 39, 118, 184),
                              const Color.fromARGB(255, 12, 105, 180),
                              const Color.fromARGB(255, 5, 60, 177),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 100,
                      bottom: 10,

                      child: Image.asset(AssetsData.moviesCategories),
                    ),
                    Positioned(
                      right: 30,
                      bottom: 160,
                      child: Text(
                        "Movies",
                        style: Style.textStyle16.copyWith(fontSize: 25),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 100,
                      child: Text(
                        "532 Titles",
                        style: Style.textStyle16.copyWith(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.4,
                height: MediaQuery.sizeOf(context).height * 0.16,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 219, 166, 21),
                              const Color.fromARGB(255, 211, 107, 9),
                              const Color.fromARGB(255, 221, 114, 14),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 20,

                      child: Image.asset(AssetsData.animesCategories),
                    ),
                    Positioned(
                      right: 124,
                      bottom: 160,
                      child: Text(
                        "Animes",
                        style: Style.textStyle16.copyWith(fontSize: 25),
                      ),
                    ),
                    Positioned(
                      right: 120,
                      bottom: 100,
                      child: Text(
                        "532 Titles",
                        style: Style.textStyle16.copyWith(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
