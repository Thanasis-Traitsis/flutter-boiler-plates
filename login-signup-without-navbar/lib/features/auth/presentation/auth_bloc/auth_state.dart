part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthUnauthenticated extends AuthState {}

final class AuthAuthenticated extends AuthState {
  final UserModel user;

  const AuthAuthenticated({
    required this.user,
  });

  @override
  List<Object> get props => [user];

  @override
  String toString() => 'LoggedIn(user: $user)';
}
