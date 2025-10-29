import 'package:equatable/equatable.dart';

import 'jpg.dart';

class Images extends Equatable {
  final Jpg? jpg;

  const Images({this.jpg});

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        jpg: json['jpg'] == null ? null : Jpg.fromJson(json['jpg']),
      );

  Map<String, dynamic> toJson() => {
        'jpg': jpg?.toJson(),
      };

  @override
  List<Object?> get props => [jpg];
}