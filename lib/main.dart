import 'package:customermodule/src/controller/theme_controller.dart';

import 'package:customermodule/src/view/splash_screen.dart';

import 'all_packages.dart';

void main() async {
  final controller = Get.put(SettingsController());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var prefs = await SharedPreferences.getInstance();
  var boolKey = 'isFirstTime';
  var isFirstTime = prefs.getBool(boolKey) ?? true;
  await GetStorage.init();
  runApp(SimpleBuilder(builder: (_) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: controller.theme,
        home: isFirstTime
            ? IntroScreen(prefs: prefs, boolKey: boolKey)
            : const MyApp());
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(builder: (_) {
      return const SplashScreen();
    });
  }
}
