import 'package:customermodule/src/controller/theme_controller.dart';

import 'package:customermodule/src/view/splash_screen.dart';
import 'package:customermodule/utils/intro_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'all_packages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var prefs = await SharedPreferences.getInstance();
  var boolKey = 'isFirstTime';
  var isFirstTime = prefs.getBool(boolKey) ?? true;
  await GetStorage.init();
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          isFirstTime ? IntroScreen(prefs: prefs, boolKey: boolKey) : MyApp()));
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
      return SplashScreen();
    });
  }
}
