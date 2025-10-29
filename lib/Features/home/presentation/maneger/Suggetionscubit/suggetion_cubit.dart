// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:aniflix_app/Features/home/data/model/anime_model/anime_model.dart';
import 'package:aniflix_app/Features/home/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'suggetion_state.dart';

class SuggetionCubit extends Cubit<SuggetionState> {

  SuggetionCubit( this.homeRepo)




    : super(SuggetionInitial());
  final HomeRepo homeRepo;
  Future<void> featchSuggetions() async {
    emit(SuggetionLoding());

    var response = await homeRepo.featchSuggetion();

    response.fold(
      (Failure) {
        emit(SuggetionFailure(Failure.errorMessage));
      },
      (suggestions) {
        print(suggestions.first.title);
        print(suggestions.first.images?.jpg?.imageUrl);
        emit(SuggetionSuccess(suggestions));
      },
    );
  }
}
