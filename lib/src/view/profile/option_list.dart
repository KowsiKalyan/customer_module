import '../../../all_packages.dart';

class OptionList extends StatefulWidget {
  const OptionList({Key? key}) : super(key: key);

  @override
  State<OptionList> createState() => _OptionListState();
}

class _OptionListState extends State<OptionList> {
  var menuoptions = [
    'MY ORDERS',
    'MANAGE ADDRESS',
    'YOUR COUPEN CODE',
    'MY TRANSACTION',
    'CHANGE THEME',
    'CHANGE LANGUAGE',
    'CHANGE PASSWORD',
    'REFER AND EARN',
    'CUSTOMER SUPPORT',
    'CONTACT US',
    'FAQS',
    'PRIVACY POLICY',
    'TERMS & CONDITION',
    'SHIPPING POLICY',
    'RETURN POLICY',
    'RATE US',
    'SHARE APP'
  ];
  var image = [
    'assets/profile/order.png',
    'assets/profile/location.png',
    'assets/profile/discount.png',
    'assets/profile/fees.png',
    'assets/profile/theme.png',
    'assets/profile/language.png',
    'assets/profile/secure.png',
    'assets/profile/refer.png',
    'assets/profile/support.png',
    'assets/profile/contact.png',
    'assets/profile/question.png',
    'assets/profile/privacy.png',
    'assets/profile/agreement.png',
    'assets/profile/delivery.png',
    'assets/profile/return.png',
    'assets/profile/rating.png',
    'assets/profile/share.png',
  ];
  var menuscreens = [
    // const HomePage(),
    // const NotificationScreen(),
    // const YourOrderScreen(),
    // const HistoryScreen(),
    // const EditProfileScreen(),
    // const ChangePasswordScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: menuoptions.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  //Get.to(menuscreens[index]);
                },
                child: Container(
                  width: 95.00.wp,
                  decoration: BoxDecoration(
                      color: screenbackground,
                      borderRadius: BorderRadius.circular(5),
                      border:
                          Border.all(width: 2, color: const Color(0xffF5F5F5))),
                  padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            image[index],
                            height: 3.0.hp,
                          ),
                          SizedBox(
                            width: 5.0.wp,
                          ),
                          Text(
                            menuoptions[index],
                            style: menuprofiloption,
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Icon(
                            Icons.arrow_right,
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          );
        });
  }
}
