import 'package:customermodule/all_packages.dart';

class ColorController extends GetxController {
  List<Color> colors = [
    Colors.black,
    Colors.brown,
    Colors.amber,
  ];
  var colorindex = 0;
  var textindex = 0;
  var text = [
    'assets/images/01.png',
    'assets/images/02.png',
    'assets/images/03.png'
  ];

  RxInt currentindex = 0.obs;
  RxInt imageindex = 0.obs;
}
