import 'package:direct_all_app/Utils/responsive.dart';
import 'package:direct_all_app/modules/whatsapp/view/isDesktop/view_desktop_homepage.dart';
import 'package:direct_all_app/modules/whatsapp/view/isMobile/view_mobile_homepage.dart';
import 'package:direct_all_app/modules/whatsapp/view/isTablet/view_tablet_homepage.dart';
import 'package:flutter/material.dart';

class WhatsappScreen extends StatelessWidget {

  const WhatsappScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Responsive.isMobile(context)
            ? const ViewMobileWhatsapp()
            : Responsive.isTablet(context)
                ? const ViewTabletWhatsapp()
                : Responsive.isDesktop(context)
                    ?  ViewDesktopWhatsapp()
                    :  ViewDesktopWhatsapp(),
    );

  }
}





