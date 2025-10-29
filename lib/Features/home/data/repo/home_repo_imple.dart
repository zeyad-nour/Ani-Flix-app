// ignore_for_file: non_constant_identifier_names

import 'package:aniflix_app/Features/home/data/model/anime_model/anime_model.dart';
import 'package:aniflix_app/Features/home/data/model/anime_model/images.dart';
import 'package:aniflix_app/Features/home/data/repo/home_repo.dart';
import 'package:aniflix_app/core/error/error.dart';
import 'package:aniflix_app/core/utils/api_servesAnime.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple implements HomeRepo {
  final ApiServesAnime apiServesAnime;

  HomeRepoImple(this.apiServesAnime);
  @override
  Future<Either<Failure, List<AnimeModel>>> featchMoreWatch() async {
    try {
      var data = await apiServesAnime.get("top/anime?filter=bypopularity");
      var firstAnime = data['data'][2];
      AnimeModel anime = AnimeModel(
        title: firstAnime['title'] ?? '',
        imageUrl: firstAnime['images']['jpg']['image_url'] ?? '',
        score: (firstAnime['score'] ?? 0).toDouble(),
      );
      return right([anime]);
    } catch (e) {
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AnimeModel>>> featchSuggetion() async {
    try {
      var data = await apiServesAnime.get("anime/20/recommendations");

      List<dynamic> animeList = data['data'];

      List<AnimeModel> suggestions = animeList.map((item) {
        final entry = item['entry'];
        return AnimeModel(
          malId: entry['mal_id'],
          title: entry['title'],
          score: null,
          images: entry['images'] != null
              ? Images.fromJson(entry['images'])
              : null,
          synopsis: null,
          imageUrl: null,
        );
      }).toList();

      return right(suggestions);
    } catch (e) {
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<AnimeModel>>> featchForYouvideo() async {
    try {
      var data = await apiServesAnime.get("anime/20/recommendations");

      List<dynamic> animeList = data['data'];

      List<AnimeModel> suggestions = animeList.map((item) {
        final entry = item['entry'];
        return AnimeModel(
          malId: entry['mal_id'],
          title: entry['title'],
          score: null,
          images: entry['images'] != null
              ? Images.fromJson(entry['images'])
              : null,
          synopsis: null,
          imageUrl: null,
        );
      }).toList();

      return right(suggestions);
    } catch (e) {
      return left(ServerFailuer(e.toString()));
    }
  }
}
