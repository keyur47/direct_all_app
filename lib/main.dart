import 'package:direct_all_app/Utils/my_behavior.dart';
import 'package:direct_all_app/Utils/size_utils.dart';
import 'package:direct_all_app/modules/homePageCantroller.dart';
import 'package:direct_all_app/modules/homepage/home_page.dart';
import 'package:direct_all_app/modules/homepage/welcome_message/welcome_message.dart';
import 'package:direct_all_app/splashScreen.dart';
import 'package:direct_all_app/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: const MyApp()));
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
              initialRoute: SplashScreen.routeName,
              theme: ThemeData(
                appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  textTheme: TextTheme(
                    headline6: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: "Customtext"
                    ),
                  ),
                  iconTheme: IconThemeData(color: Colors.black),
                ),
              ),
              getPages: [
                GetPage(
                  name: SplashScreen.routeName,
                  page: () => const SplashScreen(),
                  transition: Transition.rightToLeft,
                ),
                // GetPage(
                //   name: Bottom.routeName,
                //   page: () =>  Bottom(),
                //   transition: Transition.rightToLeft,
                // ),
                GetPage(
                  name: HomePageScreen.routeName,
                  page: () => const HomePageScreen(),
                  transition: Transition.rightToLeft,
                ),
                GetPage(
                  name: WelcomeMessage.routeName,
                  page: () => const WelcomeMessage(),
                  transition: Transition.rightToLeft,
                ),
              ]);
        });
  }
}

class AppBidding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}
