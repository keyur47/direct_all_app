class StringsUtils {
  StringsUtils._();

  static const String typeYourMessage = 'Type Your Message..';
  static const String email = 'Email';
  static const String sendFeedBack = 'Send FeedBack';
  static const String phoneNumber = 'Phone Number';
  static const String username = 'Username';
  static const String openWhatsApp = 'Open WhatsApp';
  static const String openMessages = 'Open Messages';
  static const String shareLocation = 'Share Location';
  static const String openTelegram = 'Open Telegram';
  static const String userNameTelegram = 'Username Telegram';
  static const String userNameInstagram = 'Username Instagram';
  static const String Messages = 'Messages';
  static const String call = 'Calls';
  static const String userNameHistory = 'Username History';
  static const String history = 'History';
  static const String userName = 'Username';
  static const String whatsDirect = 'WhatsDirect';
  static const String whatsDirects = 'Direct WhatsApp';
  static const String whatsAppDirect = 'Direct\nWhatsApp';
  static const String telegramDirects = 'Direct Telegram';
  static const String instagramDirects = 'Direct Instagram';
  static const String snapchatDirects = 'Direct Snapchat';
  static const String smsDirects = 'Direct Call & Sms';
  static const String whatsApp = 'WhatsApp';
  static const String telegram = 'Telegram';
  static const String instagram = 'Instagram';
  static const String callAndMessages = ' Call & Messages';
  static const String sms = 'Call & Sms';
  static const String snapchat = 'Snapchat';
  static const String contacts = 'Contacts';
  static const String contactsHistory = 'Contacts History';
  static const String shareApp = 'Share App';
  static const String rateApp = 'Rate App';
  static const String feedback = 'Feedback';
  static const String aboutApp = 'About App';
  static const String termsAndPrivacy = "Terms and Privacy";
  static const String feedBackMessages = "Top a star to rate it on the \n App Store.";
  static const String feedBackTitle = "Enjoying Direct All app";
  static const String feedBackButtonNotNow = "Not Now";
  static const String pleasePhoneNumber = "Please Enter Phone Number";
  static const String pleaseCountryCode = "Please Enter Country Code";
  static const String pleaseUsername = "Please Enter Username";
  static const String pleaseEmail = "Please Enter Email & Feedback";
  static const String pleaseEmails = "Please Enter Email";
  static const String emailRegExp =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
}



































//   Scaffold(
//   backgroundColor: AppColor.appBackgroundColor,
//   appBar: AppBar(
//     backgroundColor: AppColor.appBarColors,
//     title:  const Text(
//       AppString.whatsAuto,
//       style: TextStyle(color: AppColor.whiteColor),
//     ),
//     actions: [
//       Padding(
//         padding: EdgeInsets.only(right: SizeUtils.horizontalBlockSize * 2),
//         child: Row(
//           children: [
//             Image.asset(
//               AssetsPath.notification,
//               width: SizeUtils.horizontalBlockSize * 1.2,
//             ),
//             SizedBox(
//               width: SizeUtils.horizontalBlockSize * 1,
//             ),
//             const Icon(
//               Icons.more_vert,
//               color: AppColor.whiteColor,
//             )
//           ],
//         ),
//       ),
//     ],
//   ),
//   body: Stack(
//     children: [
//       Padding(
//         padding: EdgeInsets.only(
//             top: SizeUtils.verticalBlockSize * 2,
//             left: SizeUtils.horizontalBlockSize * 5,
//             right: SizeUtils.horizontalBlockSize * 5),
//         child: Stack(
//           children: [
//             const Text(
//               AppString.availableCategories,
//               style: TextStyle(
//                   color: AppColor.textColor,
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600),
//             ),
//             SingleChildScrollView(
//               child: Padding(
//                 padding:
//                 EdgeInsets.only(top: SizeUtils.verticalBlockSize * 5),
//                 child: Column(
//                   children: [
//                     customCategoriesBox(
//                         titleText: AppString.welcomeMessageTitle,
//                         subtitle: AppString.welcomeMessageSubTile,
//                         image: AssetsPath.star,
//                         onTap: () {
//                           Get.toNamed(Routes.welcomeMessage);
//                         }),
//                     SizedBox(
//                       height: SizeUtils.verticalBlockSize * 1.5,
//                     ),
//                     customCategoriesBox(
//                         titleText: AppString.menuReplyTitle,
//                         subtitle: AppString.menuReplySubTile,
//                         image: AssetsPath.messages,
//                         onTap: () {}),
//                     SizedBox(
//                       height: SizeUtils.verticalBlockSize * 1.5,
//                     ),
//                     customCategoriesBox(
//                         titleText: AppString.emojiTitle,
//                         subtitle: AppString.emojiSubTile,
//                         image: AssetsPath.emoji,
//                         onTap: () {}),
//                     SizedBox(
//                       height: SizeUtils.verticalBlockSize * 1.5,
//                     ),
//                     customCategoriesBox(
//                         titleText: AppString.settingTitle,
//                         subtitle: AppString.settingSubTile,
//                         image: AssetsPath.setting,
//                         onTap: () {}),
//                     SizedBox(
//                       height: SizeUtils.verticalBlockSize * 1.5,
//                     ),
//                     customCategoriesBox(
//                         titleText: AppString.categoryTitle,
//                         subtitle: AppString.categorySubTile,
//                         image: AssetsPath.category,
//                         onTap: () {}),
//                     SizedBox(
//                       height: SizeUtils.verticalBlockSize * 1.5,
//                     ),
//                     customCategoriesBox(
//                         titleText: AppString.documentTitle,
//                         subtitle: AppString.documentSubTile,
//                         image: AssetsPath.document,
//                         onTap: () {}),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   ),
// );
