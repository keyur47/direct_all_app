// import 'package:direct_all_app/Utils/assets_path.dart';
// import 'package:direct_all_app/Utils/size_utils.dart';
// import 'package:direct_all_app/modules/homePageCantroller.dart';
// import 'package:direct_all_app/modules/homepage/home_page.dart';
// import 'package:direct_all_app/modules/messages.dart';
// import 'package:direct_all_app/theme/app_color.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Bottom extends StatefulWidget {
//   static const routeName = '/BottomNavigationBar_screen';
//
//   @override
//   _BottomState createState() => _BottomState();
// }
//
// class _BottomState extends State<Bottom > {
//
//   HomePageController homePageController = Get.find();
//
//   int _selectedIndex = 0;
//
//   static const List<Widget> _widgetOptions = <Widget>[
//     HomePageScreen(),
//     Meassages(),
//     Meassagess(),
//     Meassagess(),
//     Meassagess(),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           items:   <BottomNavigationBarItem>[
//              BottomNavigationBarItem(
//                 icon: Image.asset(AssetsPath.homeBottomNavigationBarItem,width: SizeUtils.horizontalBlockSize * 8,),
//                 label: '',
//             ),
//              BottomNavigationBarItem(
//                 icon: Image.asset(AssetsPath.messageBottomNavigationBarItem,width: SizeUtils.horizontalBlockSize * 8,),
//                 label: '',
//             ),
//             //  BottomNavigationBarItem(
//             //     icon: Image.asset(AssetsPath.upBottomNavigationBarItem,width: SizeUtils.horizontalBlockSize * 14,),
//             //     label: '',
//             // ),
//              BottomNavigationBarItem(
//               icon: Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   decoration: const BoxDecoration(color: AppColor.splashScreenBackgroundColor, shape: BoxShape.circle),
//                   // padding: EdgeInsets.all(14),
//                   child: Image.asset(AssetsPath.upBottomNavigationBarItem,width: SizeUtils.horizontalBlockSize * 14,),
//                 ),
//               ),
//               label: '',
//             ),
//              BottomNavigationBarItem(
//               icon: Image.asset(AssetsPath.userBottomNavigationBarItem,width: SizeUtils.horizontalBlockSize * 8,),
//               label: '',
//             ),
//              BottomNavigationBarItem(
//               icon: Image.asset(AssetsPath.settingBottomNavigationBarItem,width: SizeUtils.horizontalBlockSize * 8,),
//               label: '',
//             ),
//           ],
//           type: BottomNavigationBarType.fixed,
//           currentIndex: _selectedIndex,
//           // selectedItemColor: Colors.black,
//           // iconSize: 40,
//           onTap: _onItemTapped,
//           elevation: 5
//       ),
//     );
//   }
// }