// ignore_for_file: file_names

import 'package:aniflix_app/Features/details/presentation/detailes_view.dart';
import 'package:aniflix_app/Features/home/presentation/maneger/Suggetionscubit/suggetion_cubit.dart';
import 'package:aniflix_app/constant.dart';
import 'package:aniflix_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide Transition;
import 'package:get/get.dart';

class ContinueWatchingVidwosSuggetion extends StatelessWidget {
  const ContinueWatchingVidwosSuggetion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggetionCubit, SuggetionState>(
      builder: (context, state) {
        if (state is SuggetionLoding) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SuggetionFailure) {
          return Center(child: Text(state.errorMessage));
        } else if (state is SuggetionSuccess) {
          final suggestions = state.SuggetionsVideo;

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(suggestions.length, (index) {
                final anime = suggestions[index];

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(
                          () => DetailesView(
                            characters:anime.characters ?? [],
                            imagename: anime.images!.jpg!.imageUrl!,
                            name: anime.title!,
                            episodes: anime.episodes ?? 0,
                          ),
                          transition: Transition.leftToRight,
                          duration: kTransitionDurition,
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: MediaQuery.sizeOf(context).width * 0.50,

                        height: MediaQuery.sizeOf(context).height * 0.20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorFontRegularsecound,
                          image: DecorationImage(
                            image: NetworkImage(
                              anime.images?.jpg?.imageUrl ?? '',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      anime.title ?? "Unknown",
                      style: Style.textStyle12.copyWith(
                        fontWeight: FontWeight.w700,
                        color: colorfontRegularAndBoldbase,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "${anime.score ?? 'N/A'}",
                      style: Style.textStyle12.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
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
