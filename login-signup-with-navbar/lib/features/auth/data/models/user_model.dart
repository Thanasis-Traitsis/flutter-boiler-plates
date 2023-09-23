import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    String? email,
    String? password,
  }) : super(
          email: email,
          password: password,
        );

  // factory UserModel.fromJson(Map<dynamic, dynamic> json) {
  //   return UserModel(
  //     email: json['email'],
  //     password: json['password'],
  //   );
  // }
}
