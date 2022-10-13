import 'package:dio/dio.dart';

import 'package:restapi/src/helpers/data_api.dart';

class RequestData {
  final Dio dio = Dio();

  Future getData() async {
    try {
      final response = await dio.get(baseUrl);

      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future addUser({required String name, required String job}) async {
    try {
      final response = await dio.post(baseUrl, data: {
        'name': name,
        'job': job,
      });
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future editUser({required String name, required String job}) async {
    try {
      final response = await dio.post('$baseUrl/4', data: {
        'name': name,
        'job': job,
      });
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future deleteUser() async {
    try {
      final response = await dio.delete('$baseUrl/4');
      return response.data;
    } catch (e) {
      rethrow;
    }
  }
}
