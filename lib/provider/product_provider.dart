// // ignore_for_file: non_constant_identifier_names

// import 'package:get_it/get_it.dart';
// import 'package:shopvegetable/data/model/product/product.dart';
// import 'package:shopvegetable/data/reponsitories/product_reponsitories.dart';

// import '../data/model/base/api_response.dart';

// class ProductProvider {
//   ProductReponsitories? productReponsitories =
//       GetIt.I.get<ProductReponsitories>();

//   Future<void> AllProduct({
//     required Function(List<product> posts) onSuccess,
//     required Function(dynamic error) onError,
//   }) async {
//     final ApiResponse apiResponse = await productReponsitories!.product();
//     if (apiResponse.response.statusCode == null) {
//       onError(apiResponse.error);
//     }
//     if (apiResponse.response.statusCode! >= 200 &&
//         apiResponse.response.statusCode! <= 300) {
//       // call back data success
//       final results = (apiResponse.response.data as List)
//           .map((item) => product.fromJson(item))
//           .toList();
//       onSuccess(results);
//       print(results);
//     } else {
//       onError(apiResponse.error);
//     }
//   }
// }
