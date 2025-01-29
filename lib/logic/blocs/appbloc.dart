abstract class AppEvent {}

abstract class AppState {}

class StateInitial extends AppState {
  @override
  String toString() => 'initial state...';
}

class StateLoading extends AppState {
  @override
  String toString() => 'loading state...';
}

class StateError extends AppState {
  final String message;
  StateError({required this.message});

  @override
  String toString() => message;
}
