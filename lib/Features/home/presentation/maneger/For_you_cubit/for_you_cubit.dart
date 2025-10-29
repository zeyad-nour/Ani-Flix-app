import 'package:aniflix_app/Features/home/data/model/anime_model/anime_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'for_you_state.dart';

class ForYouCubit extends Cubit<ForYouState> {
  ForYouCubit() : super(ForYouInitial());
}
