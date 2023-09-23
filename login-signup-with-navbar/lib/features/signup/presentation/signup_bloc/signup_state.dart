part of 'signup_bloc.dart';

sealed class SignupState extends Equatable {
  const SignupState();
  
  @override
  List<Object> get props => [];
}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccessful extends SignupState {}

final class SignupFailure extends SignupState {
  final String message;

  const SignupFailure({
    required this.message,
  });

  @override
  List<Object> get props => [message];

  @override
  String toString() => 'SignupFailure(message: $message)';
}
