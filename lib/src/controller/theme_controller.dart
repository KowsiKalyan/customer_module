import 'package:get_storage/get_storage.dart';

import '../../all_packages.dart';

class SettingsController extends GetxController {
  final appdata = GetStorage();
  //   appdata.writeIfNull('darkmode', false);
  final box = GetStorage();
  bool get isDark => box.read('darkmode') ?? false;
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) {
    box.write('darkmode', val);
    update();
  }
}
