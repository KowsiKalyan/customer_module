import 'package:get_storage/get_storage.dart';

import '../../all_packages.dart';

class SettingsController extends GetxController {
  ThemeData? themeData;

  final box = GetStorage();

  // @override // called when you use Get.put before running app
  // void onInit() {
  //   super.onInit();
  //   _restoreTheme();
  // }

  // void _restoreTheme() {
  //   bool isDark =
  //       box.read('isDark') ?? true; // null check for first time running this
  //   if (isDark) {
  //     themeData = ThemeData.dark();
  //   } else {
  //     themeData = ThemeData.light();
  //   }
  // }

  // void storeThemeSetting(bool isDark) {
  //   box.write('isDark', isDark);
  // }

  bool get isDark => box.read('darkmode') ?? false;
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => box.write('darkmode', val);
}
