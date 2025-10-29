// ignore_for_file: must_be_immutable, non_constant_identifier_names

part of 'suggetion_cubit.dart';

sealed class SuggetionState extends Equatable {
  const SuggetionState();

  @override
  List<Object> get props => [];
}

final class SuggetionInitial extends SuggetionState {}

final class SuggetionLoding extends SuggetionState {}

final class SuggetionSuccess extends SuggetionState {
  List<AnimeModel> SuggetionsVideo;
  SuggetionSuccess(this.SuggetionsVideo);
}

final class SuggetionFailure extends SuggetionState {
  final String errorMessage;

  const SuggetionFailure(this.errorMessage);
}
