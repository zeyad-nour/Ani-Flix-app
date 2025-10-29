import 'package:dio/dio.dart';

class ApiServesAnime {
  final baseUrl = "https://api.jikan.moe/v4/";
  final Dio _dio;
  ApiServesAnime(this._dio);
  Future<Map<String, dynamic>> get(String endPoint)async {
    var response =await _dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
