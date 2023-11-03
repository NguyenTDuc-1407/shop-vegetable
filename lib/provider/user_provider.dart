// ignore_for_file: non_constant_identifier_names

import 'package:get_it/get_it.dart';
import 'package:shopvegetable/data/model/user/users.dart';
import '../data/model/base/api_response.dart';
import '../data/reponsitories/user_reponsitories.dart';

class UserProvider {
  UserReponsitories? userReponsetories = GetIt.I.get<UserReponsitories>();

  Future<void> AllUser({
    required Function(List<Users> posts) onSuccess,
    required Function(dynamic error) onError,
  }) async {
    final ApiResponse apiResponse = await userReponsetories!.user();
    if (apiResponse.response.statusCode == null) {
      onError(apiResponse.error);
    }
    if (apiResponse.response.statusCode! >= 200 &&
        apiResponse.response.statusCode! <= 300) {
      // call back data success
      final results = (apiResponse.response.data as List)
          .map((item) => Users.fromJson(item))
          .toList();
      onSuccess(results);
    } else {
      onError(apiResponse.error);
    }
  }
}
