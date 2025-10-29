part of 'for_you_cubit.dart';

sealed class ForYouState extends Equatable {
  const ForYouState();

  @override
  List<Object> get props => [];
}

final class ForYouInitial extends ForYouState {}

final class ForYouLoding extends ForYouState {}

final class ForYouSuccess extends ForYouState {
  final List<AnimeModel> foryouVideos;
  const ForYouSuccess(this.foryouVideos);
}

final class ForYouFailure extends ForYouState {
  final String errorMessage;

  const ForYouFailure(this.errorMessage);
}
