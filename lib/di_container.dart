// ignore_for_file: unused_field

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopvegetable/help/size.dart';

final sl = GetIt.instance;

class SharedPreferenceHelper {
  final SharedPreferences _sharedPreference;
  SharedPreferenceHelper(this._sharedPreference);
}

Future<void> init() async {
  // ignore: unused_local_variable

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferenceHelper>(
      SharedPreferenceHelper(sharedPreferences));
  sl.registerSingleton<MySize>(MySize());
}
