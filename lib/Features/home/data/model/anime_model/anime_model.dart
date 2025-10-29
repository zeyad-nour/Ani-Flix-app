import 'package:equatable/equatable.dart';

import 'aired.dart';
import 'character.dart';
import 'images.dart';

class AnimeModel extends Equatable {
  final int? malId;
  final String? url;
  final String? title;
  final String? titleEnglish;
  final String? titleJapanese;
  final String? type;
  final String? source;
  final int? episodes;
  final String? status;
  final Aired? aired;
  final String? duration;
  final String? rating;
  final double? score;
  final String? synopsis;
  final Images? images;
  final List<Character>? characters;

  const AnimeModel({
    this.malId,
    this.url,
    this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.type,
    this.source,
    this.episodes,
    this.status,
    this.aired,
    this.duration,
    this.rating,
    this.score,
    this.synopsis,
    this.images,
    this.characters,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) => AnimeModel(
    malId: json['mal_id'] as int?,
    url: json['url'] as String?,
    title: json['title'] as String?,
    titleEnglish: json['title_english'] as String?,
    titleJapanese: json['title_japanese'] as String?,
    type: json['type'] as String?,
    source: json['source'] as String?,
    episodes: json['episodes'] as int?,
    status: json['status'] as String?,
    aired: json['aired'] == null
        ? null
        : Aired.fromJson(json['aired'] as Map<String, dynamic>),
    duration: json['duration'] as String?,
    rating: json['rating'] as String?,
    score: (json['score'] as num?)?.toDouble(),
    synopsis: json['synopsis'] as String?,
    images: json['images'] == null
        ? null
        : Images.fromJson(json['images'] as Map<String, dynamic>),
    characters: (json['characters'] as List<dynamic>?)
        ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'mal_id': malId,
    'url': url,
    'title': title,
    'title_english': titleEnglish,
    'title_japanese': titleJapanese,
    'type': type,
    'source': source,
    'episodes': episodes,
    'status': status,
    'aired': aired?.toJson(),
    'duration': duration,
    'rating': rating,
    'score': score,
    'synopsis': synopsis,
    'images': images?.toJson(),
    'characters': characters?.map((e) => e.toJson()).toList(),
  };

  @override
  List<Object?> get props {
    return [
      malId,
      url,
      title,
      titleEnglish,
      titleJapanese,
      type,
      source,
      episodes,
      status,
      aired,
      duration,
      rating,
      score,
      synopsis,
      images,
      characters,
    ];
  }
}
