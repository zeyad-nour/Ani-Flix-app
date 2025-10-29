import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final String? title;
  final int? year;
  final String? imdbId;
  final int? rank;
  final String? actors;
  final String? aka;
  final String? imdbUrl;
  final String? imgPoster;

  const Movies({
    this.title,
    this.year,
    this.imdbId,
    this.rank,
    this.actors,
    this.aka,
    this.imdbUrl,
    this.imgPoster,
  });

  factory Movies.fromJson(Map<String, dynamic> json) => Movies(
    title: json['title'] as String?,
    year: json['year'] as int?,
    imdbId: json['imdb_id'] as String?,
    rank: json['rank'] as int?,
    actors: json['actors'] as String?,
    aka: json['aka'] as String?,
    imdbUrl: json['imdb_url'] as String?,
    imgPoster: json['img_poster'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'title': title,
    'year': year,
    'imdb_id': imdbId,
    'rank': rank,
    'actors': actors,
    'aka': aka,
    'imdb_url': imdbUrl,
    'img_poster': imgPoster,
  };

  @override
  List<Object?> get props {
    return [title, year, imdbId, rank, actors, aka, imdbUrl, imgPoster];
  }
}
