part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginInitialize extends LoginEvent {}

class LoginButtonPressed extends LoginEvent {
  final Map body;

  const LoginButtonPressed({
    required this.body,
  });

  @override
  List<Object> get props => [body];

  @override
  String toString() => 'LoginButtonPressed(Body: $body)';
}
