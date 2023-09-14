part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccessful extends LoginState {}

final class LoginFailure extends LoginState {
  final String message;

  const LoginFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'LoginFailure(message: $message)';
}
