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
      (Failure) {
        emit(ReleaseCubFailure(Failure.errorMessage));
      },
      (Release) {
        // Debug print هنا بعد ما تجيب البيانات
        // ignore: avoid_print
        print(Release); 
        if (Release.isNotEmpty) {
          // ignore: avoid_print
          print(Release.first.images?.jpg?.imageUrl);
        }
        emit(ReleaseCubitSuccess(Release));
      },
    );
  }
}
