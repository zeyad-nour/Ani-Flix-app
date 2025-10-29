// ignore_for_file: non_constant_identifier_names

part of 'release_cubit_cubit.dart';

sealed class ReleaseCubitState extends Equatable {
  const ReleaseCubitState();

  @override
  List<Object> get props => [];
}

final class ReleaseCubitInitial extends ReleaseCubitState {}

final class ReleaseCubitLoding extends ReleaseCubitState {}

final class ReleaseCubitSuccess extends ReleaseCubitState {
  final List<AnimeModel> Release;

  const ReleaseCubitSuccess(this.Release);
}

final class ReleaseCubFailure extends ReleaseCubitState {
  final String errorMessage;

  const ReleaseCubFailure(this.errorMessage);
}
