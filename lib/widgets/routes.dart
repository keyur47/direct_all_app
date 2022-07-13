import 'package:direct_all_app/modules/homepage/home_page.dart';
import 'package:direct_all_app/modules/homepage/welcome_message/welcome_message.dart';
import 'package:direct_all_app/modules/splashScreen/splashScreen.dart';
import 'package:get/get.dart';


mixin Routes {
  static const defaultTransition = Transition.rightToLeft;

  // get started
  static const String splash = '/splash';
  static const String homePageScreen = '/homePageScreen';


  static List<GetPage<dynamic>> routes = [

    GetPage<dynamic>(
      name: splash,
      page: () => const SplashScreen(),
      transition: defaultTransition,
    ),

    GetPage<dynamic>(
      name: homePageScreen,
      page: () => const HomePageScreen(),
      transition: defaultTransition,
    ),


  ];


}
