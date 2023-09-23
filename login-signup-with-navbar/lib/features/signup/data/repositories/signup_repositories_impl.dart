import 'dart:convert';

import '../../../../core/constants/urls.dart';
import '../../../auth/data/models/user_model.dart';

import 'package:http/http.dart' as http;

import '../../domain/repositories/signup_repositories.dart';

class SignupRepositoriesImpl implements SignupRepositories {
  String? errorMessage;

  UserModel? user;

  @override
  Future signupUser({
    required Map body,
    required String confirm,
  }) async {
    var url = '$appUrl/register';

    // The correct body for a successful login
    // {
    //   "email": "eve.holt@reqres.in",
    //   "password": "pistol"
    // }

    if (body['password'] != confirm && body['email'] != '') {
      errorMessage =
          "The passwords you provided don't match. Please ensure they are the same.";
      return null;
    }

    try {
      var response = await http.post(
        Uri.parse(url),
        body: body,
        headers: {
          'Accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        user = UserModel(
          email: body['email'],
        );

        return jsonDecode(response.body)['token'];
      } else {
        errorMessage = jsonDecode(response.body)['error'];

        return null;
      }
    } catch (error) {
      print(error);
    }

    return null;
  }
}
