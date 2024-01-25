// ignore_for_file: unused_local_variable

import 'package:get_it/get_it.dart';
import 'package:shopvegetable/data/dio/dio_client.dart';
import 'package:shopvegetable/data/model/base/api_response.dart';

class UserReponsitories {
  DioClient? dioClient = GetIt.I.get<DioClient>();

  Future<ApiResponse> user() async {
    try {
      final respone = await dioClient!.get("posts");
      return ApiResponse.withSuccess(respone);
    } catch (e) {
      return ApiResponse.withError(e);
    }
  }
}
