// import 'package:get_it/get_it.dart';

// import '../dio/dio_client.dart';
// import '../model/base/api_response.dart';

// class ProductReponsitories {
//   DioClient? dioClient = GetIt.I.get<DioClient>();

//   Future<ApiResponse> product() async {
//     try {
//       final respone = await dioClient!.get("/api/products");
//       return ApiResponse.withSuccess(respone);
//     } catch (e) {
//       return ApiResponse.withError('loi');
//     }
//   }
// }
