part of 'startgame_cubit.dart';

abstract class StartgameState extends Equatable {
  const StartgameState();

  @override
  List<Object> get props => [];
}

class StartgameInitial extends StartgameState {}

class StartGameLoading extends StartgameState {
  const StartGameLoading() : super();
}

class StartGameSuccess extends StartgameState {
  const StartGameSuccess() : super();
}

class StartGameFailed extends StartgameState {
  const StartGameFailed() : super();
}
