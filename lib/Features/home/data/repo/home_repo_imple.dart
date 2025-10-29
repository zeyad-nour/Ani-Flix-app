import 'package:aniflix_app/Features/home/data/model/anime_model/anime_model.dart';
import 'package:aniflix_app/Features/home/data/model/anime_model/images.dart';
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
  Future<Either<Failure, List<AnimeModel>>> featchSuggetion() async {
    try {
      // 1️⃣ استدعاء الـ API
      var data = await apiServesAnime.get("anime/20/recommendations");

      // 2️⃣ الوصول لقائمة النتائج داخل الـ JSON
      List<dynamic> animeList = data['data'];

      // 3️⃣ تحويل كل عنصر من JSON إلى AnimeModel
      List<AnimeModel> suggestions = animeList.map((item) {
        final entry =
            item['entry']; // لأن API MyAnimeList بتخزن البيانات داخل entry
        return AnimeModel(
          malId: entry['mal_id'],
          title: entry['title'],
          score: null, // مفيش تقييم مباشر في recommendations
          images: entry['images'] != null
              ? Images.fromJson(entry['images'])
              : null,
          synopsis: null, // مفيش ملخص في recommendations endpoint
          imageUrl: null,
        );
      }).toList();

      // 4️⃣ ترجع البيانات كـ Right (نجاح)
      return right(suggestions);
    } catch (e) {
      // 5️⃣ في حالة الخطأ ترجع Failure
      return left(ServerFailuer(e.toString()));
    }
  }
}
