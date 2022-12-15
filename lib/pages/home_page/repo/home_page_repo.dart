import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:leadsdoit_test/core/models/events.dart';

class HomePageRepository {
  final Dio _dio = Dio(
    BaseOptions(
      validateStatus: (statusCode) {
        if (statusCode == null) {
          return false;
        }
        if (statusCode == 422) {
          return true;
        } else {
          return statusCode == 200;
        }
      },
    ),
  );
  static const _baseUrl = 'https://www.thesportsdb.com/';

  Future<Events> getEvents() async {
    try {
      final response = await _dio.get(
        "$_baseUrl/api/v1/json/40130162/eventsday.php?d=2022-12-15&s=Soccer",
      );
      log("Response: ${response.data}");
      final validMap =
          json.decode(json.encode(response.data)) as Map<String, dynamic>;
      return Events.fromJson(validMap);
    } on DioError catch (e) {
      throw "${e.response!.statusCode}: ${e.response!.statusMessage} - Ошибка";
    }
  }
}
