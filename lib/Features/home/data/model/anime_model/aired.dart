import 'package:equatable/equatable.dart';

class Aired extends Equatable {
  final String? from;
  final String? to;
  final String? string;

  const Aired({this.from, this.to, this.string});

  factory Aired.fromJson(Map<String, dynamic> json) => Aired(
    from: json['from'] as String?,
    to: json['to'] as String?,
    string: json['string'] as String?,
  );

  Map<String, dynamic> toJson() => {'from': from, 'to': to, 'string': string};

  @override
  List<Object?> get props => [from, to, string];
}
