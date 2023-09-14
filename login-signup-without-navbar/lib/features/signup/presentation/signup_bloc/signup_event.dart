// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'signup_bloc.dart';

sealed class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}

class SignupInitialize extends SignupEvent {}

class SignupButtonPressed extends SignupEvent {
  final Map body;
  final String confirm;

  const SignupButtonPressed({
    required this.body,
    required this.confirm,
  });

  @override
  List<Object> get props => [body, confirm];

  @override
  String toString() => 'SignupButtonPressed(Body: $body, confirm: $confirm)';
}
