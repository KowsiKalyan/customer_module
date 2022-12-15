import 'dart:async';

import 'package:customermodule/all_packages.dart';

class AddToCartcontroller extends GetxController {
  bool isStopped = false; //global

  sec5Timer() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      Container(
        child: Image.asset(
          'assets/images/dress1.jpg',
        ),
      );
    });
  }
}
