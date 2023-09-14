import 'dart:convert';

import '../../../../core/constants/urls.dart';
import '../../../auth/data/models/user_model.dart';
import '../../domain/repositories/login_repositories.dart';

import 'package:http/http.dart' as http;

class LoginRepositoriesImpl implements LoginRepositories {
  String? errorMessage;

  UserModel? user;

  @override
  Future loginUser({
    required Map body,
  }) async {
    var url = '$appUrl/login';

    // The correct body for a successful login
    // {
    //   "email": "eve.holt@reqres.in",
    //   "password": "cityslicka"
    // }

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
