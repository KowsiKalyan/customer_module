import 'package:customermodule/src/view/profile/wallet/wallet_screen.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_manager/change_theme_widget.dart';
import 'package:theme_manager/theme_manager.dart';

import '../../../all_packages.dart';
import '../../../utils/common_function/profilecustom_widgets.dart';
import '../../controller/theme_controller.dart';
import '../My order/myorder_screen.dart';
import '../about us/about_us_sreen.dart';
import '../change theme/change_theme.dart';
import '../changepassword/change_password.dart';
import '../contact us/contact_us_screen.dart';
import '../customer_support/customer_support.dart';
import '../faq/faq_ui_screen.dart';
import '../privacy policy/privacy_policy_screen.dart';
import '../product/deiveryaddress_screen.dart';
import '../refer and earn/refer_earn_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../return policy/return_policy_ui.dart';
import '../shipping policy/shipping_policy_ui.dart';
import '../terms&condition/terms_condition_ui.dart';

class OptionList extends StatelessWidget {
  OptionList({Key? key}) : super(key: key);

  bool _enable = false;

  final controller = Get.put(SettingsController());

  // var menuoptions = [
  var selected = true;
  final Uri _url = Uri.parse('https://www.cherritech.com/privacy-policy.php');
  _launchUrl() async {
    if (await launchUrl(_url)) {
      //dialer opened
    } else {
      //dailer is not opened
    }
  }

  var appdata = GetStorage();
  Future share() async {
    await FlutterShare.share(
        title: 'cShop Multi',
        text: 'CSHOP Multi',
        linkUrl:
            'Android : https://play.google.com/store/apps/details?id=cShop.multivendor.customer',
        chooserTitle: 'Example Chooser Title');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.to(MyOrderScreen());
          },
          child: ProfileCustomWidget(
            image: 'assets/profile/order.png',
            text: 'MY ORDERS',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(DeliveryAddressScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/location.png',
            text: 'MANAGE ADDRESS',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(CouponcodeScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/discount.png',
            text: 'YOUR COUPEN CODE',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(WalletScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/fees.png',
            text: 'MY WALLET',
            icon: Icons.arrow_right,
          ),
        ),
        // ObxValue(
        //   (data) => Switch(
        //     value: _isLightTheme.value,
        //     onChanged: (val) {
        //       setState(() {
        //         _isLightTheme.value = val;
        //         Get.changeThemeMode(
        //           _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
        //         );
        //         _saveThemeStatus();
        //       });
        //     },
        //   ),
        //   false.obs,
        // ),
        SimpleBuilder(builder: (_) {
          return SwitchListTile(
            activeColor: appcolor,
            autofocus: true,
            value: controller.isDark,
            title: Row(
              children: [
                Image.asset(
                  'assets/profile/theme.png',
                  height: 3.0.hp,
                ),
                SizedBox(
                  width: 5.0.wp,
                ),
                Text(
                  'CHANGE THEME',
                  style: orderdetails,
                )
              ],
            ),
            onChanged: controller.changeTheme,
          );
        }),
        // SimpleBuilder(builder: (_) {
        //   return SwitchListTile(
        //     value: controller.isDark,
        //     title: Text("Touch to change ThemeMode"),
        //     onChanged: controller.changeTheme,
        //   );
        // }),

        // GetBuilder<SettingsController>(builder: (_) {
        //   return Switch(
        //     value: controller.isDarkMode,
        //     onChanged: (value) {
        //       controller.thememode();
        //     },
        //   );
        // }),
        InkWell(
          onTap: (() {}),
          child: ProfileCustomWidget(
            image: 'assets/profile/language.png',
            text: 'CHANGE LANGUAGE',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(ChangePassword());
          },
          child: ProfileCustomWidget(
            image: 'assets/profile/secure.png',
            text: 'CHANGE PASSWORD',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(ReferEarnScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/refer.png',
            text: 'REFER AND EARN',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(CustomerSupport());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/support.png',
            text: 'CUSTOMER SUPPORT',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(AboutUsScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/information.png',
            text: 'ABOUT US',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(ContactUsScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/contact.png',
            text: 'CONTACT US',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(FaqScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/question.png',
            text: 'FAQS',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(PrivacyPolicyscreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/privacy.png',
            text: 'PRIVACY POLICY',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(TermsConditionScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/agreement.png',
            text: 'TERMS & CONDITION',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(ShippingPolicyScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/delivery.png',
            text: 'SHIPPING ADDRESS',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {
            Get.to(ReturnPolicyScreen());
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/return.png',
            text: 'RETURN POLICY',
            icon: Icons.arrow_right,
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: ProfileCustomWidget(
            image: 'assets/profile/rating.png',
            text: 'RATE US',
            icon: Icons.arrow_right,
          ),
        ),

        InkWell(
          onTap: (() {
            share();
          }),
          child: ProfileCustomWidget(
            image: 'assets/profile/share.png',
            text: 'SHARE',
            icon: Icons.arrow_right,
          ),
        ),
      ],
    );
  }
}
