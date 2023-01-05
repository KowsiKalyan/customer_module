import 'package:customermodule/src/controller/theme_controller.dart';
import 'package:customermodule/src/view/change%20theme/change_theme.dart';
import 'package:customermodule/src/view/splash_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:theme_manager/theme_manager.dart';

import 'all_packages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final controller = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    // return ThemeManager(
    //     defaultBrightnessPreference: BrightnessPreference.system,
    //     data: (Brightness brightness) => ThemeData(
    //           primarySwatch: Colors.blue,
    //           brightness: brightness,
    //         ),
    //     loadBrightnessOnStart: false,
    //     themedWidgetBuilder: (BuildContext context, ThemeData theme) {
    //       return GetMaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         theme: theme,
    //         home: SplashScreen(),
    //       );
    //     });

    return SimpleBuilder(builder: (_) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: controller.theme,
        home: SplashScreen(),
      );
    });
  }
}
// import 'package:customermodule/all_packages.dart';
// import 'package:flutter/material.dart';
// import 'dart:async';

// import 'package:flutter/services.dart';
// import 'package:flutter_share/flutter_share.dart';
// import 'package:share_plus/share_plus.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   Future share() async {
//     await FlutterShare.share(
//         title: 'cShop Multi',
//         text: 'Refer Code :pp0P5FVJ',
//         linkUrl:
//             'Android : https://play.google.com/store/apps/details?id=cShop.multivendor.customer',
//         chooserTitle: 'Example Chooser Title');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Plugin example app'),
//         ),
//         body: Center(
//             child: Padding(
//           padding: const EdgeInsets.only(left: 10.0, right: 10.0),
//           child: InkWell(
//             onTap: (() {
//               // Share.share('check out my website https://example.com',
//               //     subject: 'Look what I made!');
//               share();
//             }),
//             child: Container(
//               height: 5.0.hp,
//               width: 80.0.wp,
//               decoration: BoxDecoration(
//                   color: appcolor, borderRadius: BorderRadius.circular(5)),
//               child: Center(
//                 child: Text(
//                   'Share',
//                   style: apptitle,
//                 ),
//               ),
//             ),
//           ),
//         )),
//       ),
//     );
//   }
// }
