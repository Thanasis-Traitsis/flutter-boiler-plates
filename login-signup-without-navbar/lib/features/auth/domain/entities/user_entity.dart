import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  String? email;
  String? password;

  UserEntity({
    this.email,
    this.password,
  });

  @override
  List<Object?> get props => [
        email,
        password,
      ];
}
