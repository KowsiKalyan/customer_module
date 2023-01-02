import 'package:customermodule/all_packages.dart';
import 'package:customermodule/src/service/addtocart_service.dart';

import '../model/addtocart_response.dart';

class AddToCartcontroller extends GetxController {
  RxBool isloading = true.obs;
  List<Model> _model = [];
  List<Model> get model => _model;
  addtocartController() async {
    try {
      var response = await AddtoCartservice().addtocartService();
      if (response != null) {
        _model.add(response);
        isloading(false);
      } else {
        isloading(false);
      }
    } catch (e) {
      rethrow;
    }
  }
}
