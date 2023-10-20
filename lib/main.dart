import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopvegetable/routers/app_pages.dart';
import 'package:shopvegetable/routers/router_child/first_router.dart';
import 'package:shopvegetable/di_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: FirstRouter.Fisrt_Page,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.list,
    );
  }
}
