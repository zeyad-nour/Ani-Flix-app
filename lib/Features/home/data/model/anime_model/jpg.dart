import 'package:equatable/equatable.dart';

class Jpg extends Equatable {
  final String? imageUrl;

  const Jpg({this.imageUrl});

  factory Jpg.fromJson(Map<String, dynamic> json) => Jpg(
        imageUrl: json['large_image_url'] as String?, // بدل image_url
      );

  Map<String, dynamic> toJson() => {
        'large_image_url': imageUrl,
      };

  @override
  List<Object?> get props => [imageUrl];
}