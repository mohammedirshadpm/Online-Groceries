import 'dart:convert';

import 'package:http/http.dart';


import '../../../main.dart';
import '../../ModelClass/GetAllProductsModel.dart';
import '../Api_clint.dart';

class GetAllProductsApi {
  ApiClient apiClient = ApiClient();

  Future<GetAllProductsModel> getGetAllProducts() async {
    String trendingpath = "${{basepath}}/product/all?page=1&limit=10";
    var body = {

    };
    print(body);
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return GetAllProductsModel.fromJson(jsonDecode(response.body));
  }
}