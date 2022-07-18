import 'package:direct_all_app/theme/app_color.dart';
import 'package:flutter/material.dart';

class ViewDesktopWhatsapp extends StatelessWidget {
   ViewDesktopWhatsapp({Key? key}) : super(key: key);
  final GlobalKey<PopupMenuButtonState<int>> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashScreenBackgroundColor10,
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.splashScreenBackgroundColor,
        child: const Icon(Icons.arrow_upward_rounded),
        onPressed: () {
          // controller.scrollUp();
        },
      ),
      body: Stack(
        children: [],
      ),
    );
  }
}





























