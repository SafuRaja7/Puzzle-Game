import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'startgame_state.dart';

class StartgameCubit extends Cubit<StartgameState> {
  StartgameCubit() : super(StartgameInitial());

  Future<void>? start() {
    emit(const StartGameLoading());
    try {
      Future.delayed(const Duration(seconds: 3), () {
        emit(
          const StartGameSuccess(),
        );
      });
    } catch (e) {
      emit(
        const StartGameFailed(),
      );
    }
    return null;
  }
}
