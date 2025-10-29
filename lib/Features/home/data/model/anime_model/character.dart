import 'package:equatable/equatable.dart';

import 'voice_actor.dart';

class Character extends Equatable {
  final Character? character;
  final String? role;
  final List<VoiceActor>? voiceActors;

  const Character({this.character, this.role, this.voiceActors});

  factory Character.fromJson(Map<String, dynamic> json) => Character(
    character: json['character'] == null
        ? null
        : Character.fromJson(json['character'] as Map<String, dynamic>),
    role: json['role'] as String?,
    voiceActors: (json['voice_actors'] as List<dynamic>?)
        ?.map((e) => VoiceActor.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'character': character?.toJson(),
    'role': role,
    'voice_actors': voiceActors?.map((e) => e.toJson()).toList(),
  };

  @override
  List<Object?> get props => [character, role, voiceActors];
}
