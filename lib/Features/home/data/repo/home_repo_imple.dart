import 'package:aniflix_app/Features/home/data/model/anime_model/anime_model.dart';
import 'package:aniflix_app/Features/home/data/repo/home_repo.dart';
import 'package:aniflix_app/core/error/error.dart';
import 'package:aniflix_app/core/utils/api_serves.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple implements HomeRepo {
  final ApiServesAnime apiServesAnime;

  HomeRepoImple(this.apiServesAnime);
  @override
  Future<Either<Failure, List<AnimeModel>>> featchMoreWatch() async {
    try {
      var data = await apiServesAnime.get("top/anime?filter=bypopularity");
           var firstAnime = data['data'][0];
  AnimeModel anime = AnimeModel(
        title: firstAnime['title'] ?? '',
        imageUrl: firstAnime['images']['jpg']['image_url'] ?? '',
        score: (firstAnime['score'] ?? 0).toDouble(),
      );
      return right([anime]);
      
    } catch (e) {
   
      return left(e.toString() as Failure);
    }
  }
  
  @override
  Future<Either<Failure, List<AnimeModel>>> featchSuggetion() {
    // TODO: implement featchSuggetion
    throw UnimplementedError();
  }
}


