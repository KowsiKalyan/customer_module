import '../../all_packages.dart';

class ProfileController extends GetxController {
  TextEditingController userName = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController companyName = TextEditingController();
  TextEditingController gstNumber = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController street = TextEditingController();

  TextEditingController pincode = TextEditingController();
  TextEditingController email = TextEditingController();
  var city = ''.obs;

  RxBool isProfileLoad = true.obs;
}
