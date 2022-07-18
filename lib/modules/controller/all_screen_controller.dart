import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Controller extends GetxController {
  TextEditingController numberController = TextEditingController();
  TextEditingController callAndMessagesNumberController =
      TextEditingController();
  TextEditingController textController = TextEditingController();
  TextEditingController messagesNumberTextController = TextEditingController();
  TextEditingController telegramUsernameController = TextEditingController();
  TextEditingController instagramUsernameController = TextEditingController();
  TextEditingController snapchatUsernameController = TextEditingController();
  TextEditingController emailFeedBackController = TextEditingController();
  TextEditingController FeedBackController = TextEditingController();
  TextEditingController callNumberController = TextEditingController();
  TextEditingController callCountryNumberController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode textFocusNode = FocusNode();
  List<String> contactsNumberList = [];
  List<String> toSetContactsNumberList = [];
  List<String> countryNumberList = [];
  List<String> countryNameList = [];
  List<String> usernameList = [];
  List<String> toSetUsernameList = [];
  List<String> dateTime = [];
  List<String> day = [];
  List<String> type = [];
  List<String> chatContactsNumberList = [];
  RxString url = ''.obs;
  RxString countryNumber = ''.obs;
  RxString countryName = ''.obs;
  RxString errorMessage = "".obs;

  // RxBool ads = false.obs;
  ///CallLogEntry
  // RxList<CallLogEntry> contactList = <CallLogEntry>[].obs;
  // RxList ADD = <CallLogEntry>[].obs;
  RxBool isShowDialPad = false.obs;
  RxBool isShowCallHistory = true.obs;
  RxString countryCode = "".obs;
  RxBool collpan = false.obs;
  static ScrollController scrollController = ScrollController();

  static void scrollUp() {
    scrollController.animateTo(scrollController.position.minScrollExtent,
        duration: Duration(seconds: 3), curve: Curves.easeInToLinear);
  }



  String getCountryNumber() {
    /// more than 10  digits and start with 00 remove 00 only
    String mobileNumber = numberController.text;
    // if (mobileNumber.length > 10 && mobileNumber.startsWith("00")) {
    //   mobileNumber = mobileNumber.substring(2);
    //   return mobileNumber;
    // }
    //
    // /// 10 digits and start with 0 remove 0 and add country code
    // if (mobileNumber.length == 10 && mobileNumber.startsWith("0")) {
    //   mobileNumber = countryCode.value + mobileNumber.substring(1);
    //   return mobileNumber;
    // }
    //
    // if (!mobileNumber.startsWith(countryCode.value)) {
    //   return countryCode.value + mobileNumber;
    // }
    //
    // return mobileNumber;

    if (mobileNumber.startsWith("+")) {
      print("+++++++++++++${mobileNumber.substring(1)}");
      return mobileNumber.substring(1);
    }

    if (mobileNumber.startsWith("00")) {
      print("000000000000-00${mobileNumber.substring(2)}");
      return mobileNumber.substring(2);
    }

    if (mobileNumber.startsWith("0")) {
      print("00000000000-0${countryCode.value + mobileNumber.substring(1)}");
      return countryCode.value + mobileNumber.substring(1);
    }

    if (!mobileNumber.startsWith(countryCode)) {
      return countryCode.value + mobileNumber;
    }
    print("mobileNumber------$mobileNumber");
    print("country code------$countryCode");
    return mobileNumber;
    // if (mobileNumber.startsWith("0") || mobileNumber.startsWith("00")) {
    //   var trimString = phoneController.text.substring(1);
    //   if (trimString.startsWith("0")) {
    //     trimString = trimString.substring(1);
    //     return trimString;
    //   }
    //   if (trimString.startsWith(countryCode.value)) {
    //     return trimString;
    //   }
    //   return (countryCode.value + trimString);
    // } else {
    //   return mobileNumber;
    // }
  }

  // void onOpenWhatsApp(String countryCode, String message) async {
  //   if (numberController.text != "") {
  //     contactsNumberList.addAll([controller.numberController.text]);
  //     await SharedPrefs.setNumberList(contactsNumberList);
  //     print("contactsNumberList:-${contactsNumberList}");
  //     try {
  //       if (Platform.isIOS) {
  //         String mobileNumber = getCountryNumber();
  //         print("Mobile Number $mobileNumber");
  //         var redirectUrl =
  //             "https://wa.me/$mobileNumber?text=${Uri.parse(message.replaceAll(":", ""))}";
  //         print("redirectUrl${redirectUrl}");
  //         if (await canLaunch(redirectUrl)) {
  //           await launch(redirectUrl, forceSafariVC: false);
  //         }
  //       } else {
  //         String mobileNumber = getCountryNumber();
  //         print("Mobile Number $mobileNumber");
  //         var redirectUrl =
  //             "https://wa.me/$mobileNumber?text=${Uri.parse(message.replaceAll(":", ""))}";
  //         print("redirectUrl${redirectUrl}");
  //         if (await canLaunch(redirectUrl)) {
  //           await launch(redirectUrl, forceSafariVC: false);
  //         }
  //         // await FlutterLaunch.launchWhatsapp(
  //         //     phone: getCountryNumber(), message: message);
  //       }
  //     } catch (e) {
  //       AppToast.toastMessage("Invalid Mobile Number");
  //     }
  //   } else {
  //     AppToast.toastMessage("Enter Mobile Number");
  //   }
  // }
  //
  // String formatDuration(int seconds) {
  //   if (seconds != null && seconds != 0) {
  //     int hours = (seconds / 3600).truncate();
  //     seconds = (seconds % 3600).truncate();
  //     int minutes = (seconds / 60).truncate();
  //
  //     String hoursStr = (hours).toString().padLeft(1, '0');
  //     String minutesStr = (minutes).toString().padLeft(1, '0');
  //     String secondsStr = (seconds % 60).toString().padLeft(0, '');
  //
  //     if (minutes == 0) {
  //       return "$secondsStr s \t";
  //     } else {
  //       if (hours == 0) {
  //         return "$minutesStr m $secondsStr s \t";
  //       }
  //       return "$hoursStr h $minutesStr m $secondsStr s \t";
  //     }
  //   } else {
  //     return "";
  //   }
  // }
  //
  // String formatMillisecondToDate(int milliSecond) {
  //   DateTime date = DateTime.fromMillisecondsSinceEpoch(milliSecond);
  //   String formattedDate = DateFormat('h:mm a').format(date).toString();
  //   // String formattedDate = DateFormat('d/M/yy h:mm a').format(date).toString();
  //   String dateTime = "";
  //   if (formattedDate.contains(DateFormat('d/M/yy').format(DateTime.now()))) {
  //     dateTime = DateFormat('h:mm a').format(date).toString();
  //   } else {
  //     dateTime = DateFormat('h:mm a').format(date).toString();
  //     //dateTime = DateFormat('d/M/yy h:mm a').format(date).toString();
  //   }
  //   return dateTime;
  // }
  //
  // void validateEmail(String val) {
  //   if (val.isEmpty) {
  //     errorMessage.value = StringsUtils.pleaseEmails;
  //   } else if (!EmailValidator.validate(val, true)) {
  //     errorMessage.value = "Invalid Email Address";
  //   } else {
  //     errorMessage.value = "";
  //   }
  // }
}
