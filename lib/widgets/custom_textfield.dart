import 'package:direct_all_app/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

// Widget phoneNumberTextField({
//   required TextEditingController? controller,
//   required bool? showCursor,
//   // required FocusNode? focusNode,
//   required String? hintText,
//   required TextInputType textInputType,
//   required ValueChanged<Country>? valueChanged,
//   required GestureTapCallback onTap,
//   // required VoidCallback onTapV,
// }) {
//   return Container(
//     decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5.h),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 4,
//             offset: Offset(4, 8), // Shadow position
//           ),
//         ]),
//     child: IntlPhoneField(
//       // onTap: onTapV,
//       disableLengthCheck: true,
//       dropdownIconPosition: IconPosition.leading,
//       dropdownIcon: const Icon(
//         Icons.arrow_drop_down,
//         color: AppColors.darkBlue,
//       ),
//       flagsButtonMargin:
//           EdgeInsets.only(right: 3.w, top: 2.w, bottom: 2.w, left: 3.w),
//       dropdownDecoration: const BoxDecoration(
//         border: Border(right: BorderSide(color: Colors.grey, width: 1)),
//       ),
//       onCountryChanged: valueChanged,
//       initialCountryCode: "",
//       dropdownTextStyle: const TextStyle(color: AppColors.grey, fontSize: 15,),
//       showDropdownIcon: true,
//       showCountryFlag: false,
//       invalidNumberMessage: "",
//       textAlignVertical: TextAlignVertical.center,
//       decoration: InputDecoration(
//         isCollapsed: true,
//         suffixIcon: GestureDetector(
//             onTap: onTap,
//             child: const Icon(
//               Icons.history,
//               color: AppColor.whatsAppColor,
//             )),
//         border: InputBorder.none,
//         hintText: hintText,
//         hintStyle: const TextStyle(color: AppColors.grey,fontSize: 15),
//       ),
//       controller: controller,
//       showCursor: showCursor,
//       style: const TextStyle(fontSize: 16, color: AppColors.black),
//       keyboardType: textInputType,
//       cursorColor: Colors.black,
//     ),
//   );
// }

  Widget phoneNumberTextField({
    required TextEditingController? controller,
    required bool? showCursor,
    required String? hintText,
    required TextInputType textInputType,
    required GestureTapCallback onTap,
    required GestureLongPressCallback onLongPress,
    required ValueChanged<String>? onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(4, 8), // Shadow position
        ),
      ], borderRadius: BorderRadius.circular(6.h), color: Colors.white),
      child: Center(
        child: FocusScope(
          node: new FocusScopeNode(),
          child: TextFormField(
              enableInteractiveSelection: true,
              controller: controller,
              toolbarOptions: const ToolbarOptions(
                paste: false,
                copy: true,
                selectAll: true,
                cut: true,
              ),
              autofocus: true,
              keyboardType: TextInputType.phone,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter(RegExp(r'[0-9+]'), allow: true)
              ],
              onChanged: onChanged,
              decoration: InputDecoration(
                  enabled: true,
                  contentPadding: EdgeInsets.only(top: 1.8.h, left: 7.w),
                  border: InputBorder.none,
                  // prefixIcon: Icon(
                  //   Icons.search,
                  //   color: AppColors.darkBlue,
                  // ),
                  suffixIcon: GestureDetector(
                      onTap: onTap,
                      onLongPress: onLongPress,
                      child: Icon(
                        Icons.close,
                        color: AppColor.splashScreenBackgroundColor,
                        size: 6.w,
                      )),
                  hintText: hintText,
                  hintStyle: TextStyle(fontSize: 16))),
        ),
      ),
    );
  }

Widget usernameTextField({
  required TextEditingController? controller,
  required bool? showCursor,
  required String? hintText,
  required TextInputType textInputType,
  required GestureTapCallback onTap,
}) {
  return GestureDetector(
    child: Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          offset: Offset(4, 8), // Shadow position
        ),
      ], borderRadius: BorderRadius.circular(5.h), color: Colors.white),
      child: TextFormField(
          controller: controller,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter(RegExp(r'[a-z_.0-9]'), allow: true)
          ],
          decoration: InputDecoration(
              enabled: true,
              contentPadding: EdgeInsets.only(top: 1.7.h),
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color:  AppColor.splashScreenBackgroundColor,
              ),
              suffixIcon: GestureDetector(
                  onTap: onTap,
                  child: Icon(Icons.close, color: AppColor.splashScreenBackgroundColor)),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 16))),
    ),
  );
}

// Controller controller = Get.find();

///
Widget textField({
  required TextEditingController? controller,
  int? maxLines,
  required Color color,
  required TextStyle textStyle,
  required TextStyle style,
  //bool? showCursor,
  required FocusNode? focusNode,
  required String? hintText,
  required Color cursorColor,
  TextInputType? textInputType,
  required BoxBorder? boxBorder,
  ValueChanged<String>? valueChanged,
  FormFieldValidator<String>? validator,
  EdgeInsetsGeometry? contentPadding,
  MaxLengthEnforcement? maxLengthEnforcement,
  Widget? suffixIcon,
}) {
  return Container(
    decoration: BoxDecoration(
        border: boxBorder,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(4, 8), // Shadow position
          ),
        ],
        color: color,
        borderRadius: BorderRadius.circular(6.w)),
    child: Padding(
      padding: EdgeInsets.only(left: 5.w, right: 2.w),
      child: TextFormField(
        toolbarOptions: const ToolbarOptions(
          paste: true,
          copy: true,
          selectAll: true,
          cut: true,
        ),
        enabled: true,
        // maxLines: maxLines,
        maxLines: null,
        // maxLength: 150,
        // maxLengthEnforcement: maxLengthEnforcement,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: textStyle,
          suffix: suffixIcon,
        ),
        controller: controller,
        onChanged: valueChanged,
        // showCursor: showCursor,
        style: style,
        keyboardType: textInputType,
        validator: validator,
        // focusNode: focusNode,
        cursorColor: cursorColor,
      ),
    ),
  );
}
