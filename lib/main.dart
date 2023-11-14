// ignore_for_file: unused_local_variable

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopvegetable/dependency_injection.dart';
import 'package:shopvegetable/routers/app_pages.dart';
import 'package:shopvegetable/routers/router_child/first_router.dart';
import 'package:shopvegetable/di_container.dart' as di;
import 'package:shopvegetable/utils/getFcm.dart';

void main() async {
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(statusBarColor: Colors.blue),
  // );
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  String? fcmKey = await getFcmToken();
  // print("ok cccc : $fcmKey");
  await di.init();
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: FirstRouter.Fisrt_Page,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.list,
    );
  }
}
