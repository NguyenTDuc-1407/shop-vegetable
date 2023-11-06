// ignore_for_file: unused_field

import 'package:get_it/get_it.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopvegetable/data/dio/dio_client.dart';
// import 'package:shopvegetable/data/reponsitories/product_reponsitories.dart';
import 'package:shopvegetable/data/reponsitories/user_reponsitories.dart';
import 'package:shopvegetable/help/size.dart';
// import 'package:shopvegetable/provider/product_provider.dart';
import 'package:shopvegetable/provider/user_provider.dart';

final sl = GetIt.instance;

// class SharedPreferenceHelper {
//   final SharedPreferences _sharedPreference;
//   SharedPreferenceHelper(this._sharedPreference);
// }

Future<void> init() async {
  // ignore: unused_local_variable

  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerSingleton<SharedPreferenceHelper>(
  //     SharedPreferenceHelper(sharedPreferences));
  sl.registerSingleton<MySize>(MySize());
  sl.registerLazySingleton<DioClient>(() => DioClient());
  sl.registerLazySingleton(() => UserProvider());
  sl.registerLazySingleton(() => UserReponsitories());
  // sl.registerLazySingleton(() => ProductProvider());
  // sl.registerLazySingleton(() => ProductReponsitories());
}
