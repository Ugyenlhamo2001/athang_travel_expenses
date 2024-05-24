import 'dart:convert';
import 'package:travel_expenses/domain/models/auth_model.dart/auth_model.dart';

import '../../plugins/http.dart';
import '../../plugins/local_shared_preferences.dart';

Future loginWithEmailAndPassword() async {
  final res = await PostRequest('authentication',
      <String, String>{'username': 'admin@expense.com', 'password': 'admin'});
  await setTokenToLocalStorage(jsonDecode(res.body)['data']['accessToken']);
}

class AuthRepo {
  Future loginWithEmailAndPassword(AuthModel authData) async {
    final res = await PostRequest('authentication',
        {'username': authData.username, 'password': authData.password});

    if (res.statusCode == 401) {
      throw Exception('Username or password is incorrect');
    }

    await setTokenToLocalStorage(jsonDecode(res.body)['data']['accessToken']);
    return res;
  }
}
