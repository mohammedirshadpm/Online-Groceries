import 'dart:convert';
import 'dart:developer';



import 'package:http/http.dart';
import 'package:untitled8/main.dart';

import 'Api_Exception.dart';


class ApiClient {
  Future<Response> invokeAPI(String path, String method, Object? body) async {
    Map<String, String> headerParams = {};
    Response response;

    String url = basepath+path;
    print(url);

    final nullableHeaderParams = (headerParams.isEmpty) ? null : headerParams;

    print(body);
    switch (method) {
      case "POST":
        response = await post(Uri.parse(url),
            headers: {
              'content-type': 'application/json',

            },
            body: body);

        break;
      case "PUT":
        response = await put(Uri.parse(url),
            headers: {
              'content-Type': 'application/json',
            },
            body: body);
        break;
      case "DELETE":
        response = await delete(Uri.parse(url), headers: {}, body: body);
        break;
      case "POST_":
        response = await post(
          Uri.parse(url),
          headers: {'content-Type': 'application/json'},
          body: body,
        );
        break;
      case "GET_":
        response = await post(
          Uri.parse(url),
          headers: {},
          body: body,
        );
        break;
      case "GET":
        response = await get(
          Uri.parse(url),
          headers: {
            'X-RapidAPI-Key':
            'c564efd7c0msh80fb6c255f50ad4p148477jsn612a79309adf',
            'X-RapidAPI-Host': 'anime-db.p.rapidapi.com',
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          },
        );

        break;
      case "PATCH":
        response = await patch(
          Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: body,
        );
        break;
      case "PATCH1":
        response = await patch(
          Uri.parse(url),
          headers: {},
          body: body,
        );
        break;
      default:
        response = await get(Uri.parse(url), headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        });
    }

    print('status of $path =>' + (response.statusCode).toString());
    print(response.body);
    if (response.statusCode >= 400) {
      log(path +
          ' : ' +
          response.statusCode.toString() +
          ' : ' +
          response.body);

      throw ApiException(_decodeBodyBytes(response), response.statusCode);
    }
    return response;
  }

  String _decodeBodyBytes(Response response) {
    var contentType = response.headers['content-type'];
    if (contentType != null && contentType.contains("application/json")) {
      return jsonDecode(response.body)['message'];
    } else {
      return response.body;
    }
  }
}