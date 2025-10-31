// ignore_for_file: file_names

import 'package:aniflix_app/Features/details/presentation/detailes_view.dart';
import 'package:aniflix_app/Features/home/presentation/maneger/For_you_cubit/for_you_cubit.dart';
import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:aniflix_app/core/utils/widget/custom_loding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
import 'package:get/get.dart';

class CustomVideoCoverForyou extends StatelessWidget {
  const CustomVideoCoverForyou({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForYouCubit, ForYouState>(
      builder: (context, state) {
        if (state is ForYouLoding) {
          return Center(child: CustomLoding());
        } else if (state is ForYouFailure) {
          return Center(child: Text(state.errorMessage));
        } else if (state is ForYouSuccess) {
          final forYouObj = state.foryouVideos;

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(forYouObj.length, (index) {
                final anime = forYouObj[index];

                return InkWell(
                  onTap: () {
                    Get.to(
                      () => DetailesView(
                        characters:anime.characters ?? [],
                        episodes: anime.episodes ?? 0,
                        imagename: anime.images!.jpg!.imageUrl!,
                        name: anime.title!,
                      ),
                      transition: Transition.leftToRight,
                      duration: kTransitionDurition,
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 13),
                        width: MediaQuery.sizeOf(context).width * 0.30,
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        decoration: BoxDecoration(
                          color: colorFontRegulartitle,
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: NetworkImage(
                              anime.images?.jpg?.imageUrl ?? '',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 14),
                      Text(anime.title!, style: Style.textStyle16),
                      SizedBox(height: 7),
                      Text(
                        "${anime.score ?? 'N/A'}",
                        style: Style.textStyle16.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: colorFontRegulartitle,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
