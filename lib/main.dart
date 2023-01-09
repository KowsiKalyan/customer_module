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
