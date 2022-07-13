import 'package:direct_all_app/Utils/my_behavior.dart';
import 'package:direct_all_app/Utils/size_utils.dart';
import 'package:direct_all_app/modules/homepage/controller/homePageController.dart';
import 'package:direct_all_app/widgets/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'modules/splashScreen/controller/splashScreenController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'WhatsApp Auto',
          builder: (context, child) {
            return ScrollConfiguration(
              behavior: MyBehavior(),
              child: child!,
            );
          },
          initialBinding: AppBidding(),
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              textTheme: TextTheme(
                headline6: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Customtext"),
              ),
              iconTheme: IconThemeData(color: Colors.black),
            ),
          ),
          initialRoute: Routes.splash,
          getPages: Routes.routes,
        );
      },
    );
  }
}

class AppBidding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
    Get.put(SplashScreenController());
  }
}
