// ignore_for_file: avoid_print, non_constant_identifier_names

import 'package:aniflix_app/Features/home/data/model/anime_model/anime_model.dart';
import 'package:aniflix_app/Features/home/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'for_you_state.dart';

class ForYouCubit extends Cubit<ForYouState> {
  ForYouCubit(this.homeRepo) : super(ForYouInitial());
  final HomeRepo homeRepo;
  Future<void> featchForYouvideo() async {
    emit(ForYouLoding());

    var response = await homeRepo.featchSuggetion();

    response.fold(
      (Failure) {
        emit(ForYouFailure(Failure.errorMessage));
      },
      (foryouVideos) {
        print(foryouVideos.first.title);
        print(foryouVideos.first.images?.jpg?.imageUrl);
        emit(ForYouSuccess(foryouVideos));
      },
    );
  }
}
