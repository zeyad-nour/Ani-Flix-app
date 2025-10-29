import 'package:equatable/equatable.dart';

import 'images.dart';

class Person extends Equatable {
  final int? malId;
  final String? name;
  final String? url;
  final Images? images;

  const Person({this.malId, this.name, this.url, this.images});

  factory Person.fromJson(Map<String, dynamic> json) => Person(
    malId: json['mal_id'] as int?,
    name: json['name'] as String?,
    url: json['url'] as String?,
    images: json['images'] == null
        ? null
        : Images.fromJson(json['images'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'mal_id': malId,
    'name': name,
    'url': url,
    'images': images?.toJson(),
  };

  @override
  List<Object?> get props => [malId, name, url, images];
}
