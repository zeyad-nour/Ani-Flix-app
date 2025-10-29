import 'package:aniflix_app/Features/home/data/model/anime_model/anime_model.dart';
import 'package:aniflix_app/core/error/error.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<AnimeModel>>> featchMoreWatch();
  Future<Either<Failure, List<AnimeModel>>> featchSuggetion();

}
