// ignore_for_file: non_constant_identifier_names

import 'package:aniflix_app/Features/home/data/model/anime_model/anime_model.dart';
import 'package:aniflix_app/Features/home/data/repo/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'release_cubit_state.dart';

class ReleaseCubitCubit extends Cubit<ReleaseCubitState> {
  ReleaseCubitCubit(this.homeRepo) : super(ReleaseCubitInitial());
  final HomeRepo homeRepo;
  Future<void> featchReleas() async {
    emit(ReleaseCubitLoding());
    var response = await homeRepo.featchMoreWatch();
    response.fold(
      // ignore: avoid_types_as_parameter_names
      (Failure) => emit(ReleaseCubFailure(Failure.errorMessage)),
      (Release) => emit(ReleaseCubitSuccess(Release)),
    );
  }
}
