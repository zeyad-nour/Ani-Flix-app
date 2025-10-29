// ignore_for_file: file_names

import 'package:aniflix_app/Features/home/presentation/maneger/Releasecubit/release_cubit_cubit.dart';
import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_image_release.dart';
import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_name_release.dart';
import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_rating_widget.dart';
import 'package:aniflix_app/Features/home/presentation/views/widgets/custom_title_release.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomReleaseWidget extends StatelessWidget {
  const CustomReleaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReleaseCubitCubit, ReleaseCubitState>(
      builder: (context, state) {
        if (state is ReleaseCubitLoding) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ReleaseCubFailure) {
          return Center(child: Text(state.errorMessage));
        } else if (state is ReleaseCubitSuccess) {
          final anime = state.Release.first;
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  "New release.",
                  style: Style.textStyle14.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.90,
                height: MediaQuery.of(context).size.height * 0.20,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ImageRelease(
                        imageurl: anime.images?.jpg?.imageUrl ?? '',
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 400,
                      child: CustomRating(score: anime.score!),
                    ),
                    Positioned(
                      top: 196,
                      left: 23,
                      child: CustomNameRelease(
                        title: anime.title!.isEmpty ? "Empty" : anime.title!,
                      ),
                    ),
                    const Positioned(
                      top: 240,
                      left: 23,
                      child: CustomtitleRelease(),
                    ),
                  ],
                ),
              ),
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}







// : anime.images?.jpg?.imageUrl ?? ''