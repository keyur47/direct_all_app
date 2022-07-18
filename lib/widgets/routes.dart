import 'package:direct_all_app/modules/instagram/instagram_screen.dart';

import 'package:direct_all_app/modules/messages/messages_screen.dart';
import 'package:direct_all_app/modules/snapchat/snapchat_screen.dart';
import 'package:direct_all_app/modules/splashScreen/splashScreen.dart';
import 'package:direct_all_app/modules/telegram/telegram_screen.dart';
import 'package:direct_all_app/modules/whatsapp/whatsapp_page.dart';
import 'package:get/get.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;

  // get started
  static const String splash = '/splash';
  static const String whatsappScreen = '/whatsappScreen';
  static const String instagram = '/Instagram';
  static const String messages = '/messages';
  static const String telegram = '/Telegram';
  static const String snapchat = '/Snapchat';



  static List<GetPage<dynamic>> routes = [

    GetPage<dynamic>(
      name: splash,
      page: () => const SplashScreen(),
      transition: defaultTransition,
    ),

    GetPage<dynamic>(
      name: whatsappScreen,
      page: () => const WhatsappScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: instagram,
      page: () =>  Instagram(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: messages,
      page: () =>  Messages(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: telegram,
      page: () =>  Telegram(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: snapchat,
      page: () =>  Snapchat(),
      transition: defaultTransition,
    ),


  ];


}
