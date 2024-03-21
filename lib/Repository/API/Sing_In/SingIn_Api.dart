import 'dart:convert';

import 'package:http/http.dart';


import '../../ModelClass/SingInModel.dart';
import '../Api_clint.dart';

class SingInApi {
  ApiClient apiClient = ApiClient();

  Future<SingInModel> getSingIn(String email, String password) async {
    String trendingpath = "/auth/local/sign-in";
    var body = {
      "email": email,
      "password": password,
    };
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    return SingInModel.fromJson(jsonDecode(response.body));
  }
}