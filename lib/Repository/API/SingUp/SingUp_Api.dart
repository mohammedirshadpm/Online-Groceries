import 'dart:convert';

import 'package:http/http.dart';


import '../../ModelClass/SingUpModel.dart';
import '../Api_clint.dart';

class SingUpApi {
  ApiClient apiClient = ApiClient();

  Future<SingUpModel> getSingUp(String username, String email, String password, String phone) async {
    String trendingpath = "/auth/local/sign-up";
    var body = {
      "Username": username,
      "Email": email,
      "Password": password,
      "phone": phone,
    };
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    return SingUpModel.fromJson(jsonDecode(response.body));
  }
}
