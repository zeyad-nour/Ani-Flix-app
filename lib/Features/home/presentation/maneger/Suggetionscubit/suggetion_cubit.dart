import 'package:aniflix_app/Features/home/data/model/anime_model/anime_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'suggetion_state.dart';

class SuggetionCubit extends Cubit<SuggetionState> {
  SuggetionCubit() : super(SuggetionInitial());
}
