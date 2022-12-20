import 'package:customermodule/src/view/profile/edit_profile/profile_image.dart';

import '../../../../all_packages.dart';
import 'detail_section.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // ignore: prefer_final_fields

  var items = [
    'TamilNadu',
    'Assam',
    'Bihar',
    'Andhra Prdhesh',
    'Uttra ',
  ];

  String dropdownvalue = 'TamilNadu';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                      child: Padding(
                    padding: EdgeInsets.only(left: 10.0, top: 4.00.hp),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            'assets/images/left.png',
                            height: 35,
                            width: 35,
                          ),
                        )
                      ],
                    ),
                  )),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 16.00.hp,
                    ),
                    child: Container(
                        width: 100.00.wp,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: DetailsSection()),
                  ),
                  ProfileImage(),
                ],
              ),
              SizedBox(
                width: 100.00.wp,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.00,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SmallActionButton(
                            press: () {
                              Navigator.of(context).pop();
                            },
                            elevationvalue: 0,
                            text: 'CANCEL',
                            bordercolor: Colors.white,
                            bgcolor: appcolor,
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 11.00.sp,
                                    letterSpacing: 1.5,
                                    color: screenbackground,
                                    fontWeight: FontWeight.w500)),
                          ),
                          SmallActionButton(
                            press: () async {
                              print('clickkk');

                              // Get.to(const HomePage());
                            },
                            elevationvalue: 0,
                            text: 'SAVE',
                            bordercolor: const Color(0xff283736),
                            bgcolor: const Color(0xff283736),
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 11.00.sp,
                                    letterSpacing: 1.5,
                                    color: screenbackground,
                                    fontWeight: FontWeight.w500)),
                          )
                        ]),
                    const SizedBox(
                      height: 20.00,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
