part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends AuthEvent {}

class LoggedIn extends AuthEvent {
  final UserModel user;

  const LoggedIn({required this.user});

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'LoggedIn(user: $user)';
}
