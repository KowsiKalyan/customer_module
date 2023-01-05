import '../../../all_packages.dart';
import 'edit_profile/detail_section.dart';
import 'edit_profile/edit_profile_screen.dart';
import 'edit_profile/profile_image.dart';

class ProfileSection extends StatefulWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  State<ProfileSection> createState() => _ProfileSectionState();
}

class _ProfileSectionState extends State<ProfileSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 34.0,
            child: CircleAvatar(
              backgroundColor: appcolor,
              radius: 32.0,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
                radius: 28.0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 3),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      'Nithish Sharma',
                      style: subtitleStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // showModalBottomSheet(
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(20.0),
              //     ),
              //     isScrollControlled: true,
              //     backgroundColor: screenbackground,
              //     context: context,
              //     builder: (context) {
              //       return Stack(
              //         children: [
              //           Container(
              //             width: MediaQuery.of(context).size.width * 1,
              //             height: MediaQuery.of(context).size.height * 1,
              //             color: appcolor,
              //           ),
              //           DraggableScrollableSheet(
              //             builder: (BuildContext buildContext,
              //                 ScrollController scrollController) {
              //               return Material(
              //                   elevation: 5,
              //                   shadowColor: Colors.black,
              //                   borderRadius: const BorderRadius.only(
              //                     topRight: Radius.circular(30.0),
              //                     topLeft: Radius.circular(30.0),
              //                   ),
              //                   child: Container(
              //                     decoration: const BoxDecoration(
              //                         borderRadius: BorderRadius.only(
              //                           topRight: Radius.circular(30.0),
              //                           topLeft: Radius.circular(30.0),
              //                         ),
              //                         color: Colors.white),
              //                     child: SingleChildScrollView(
              //                       controller: scrollController,
              //                       child: Column(
              //                         children: [
              //                           Container(
              //                             height: 40.00.hp,
              //                             width: 80.00.wp,
              //                             decoration: BoxDecoration(),
              //                           ),
              //                           //  SizedBox(height: 4.00.hp),
              //                           Text('Welcome Back',
              //                               style: toptitleStyle),
              //                           SizedBox(height: 00.20.hp),
              //                           Row(
              //                             mainAxisAlignment:
              //                                 MainAxisAlignment.center,
              //                             children: [
              //                               Flexible(
              //                                 child: Text(
              //                                   'Let’s login for explore continues',
              //                                   style: subtitleStyle,
              //                                 ),
              //                               ),
              //                             ],
              //                           ),
              //                           SizedBox(height: 3.00.hp),

              //                           SizedBox(height: 3.00.hp),
              //                           Row(
              //                             mainAxisAlignment:
              //                                 MainAxisAlignment.center,
              //                             children: [
              //                               Container(
              //                                 width: 30.00.wp,
              //                                 height: 00.20.hp,
              //                                 color: const Color(0xffE8E8E8),
              //                               ),
              //                               Padding(
              //                                 padding: const EdgeInsets.only(
              //                                     left: 8.0, right: 8),
              //                                 child: Text(
              //                                   'Start quickly with',
              //                                   style: GoogleFonts.poppins(
              //                                       textStyle: TextStyle(
              //                                           fontSize: 9.00.sp,
              //                                           color: const Color(
              //                                               0xffB1BDC9),
              //                                           fontWeight:
              //                                               FontWeight.w500)),
              //                                 ),
              //                               ),
              //                               Container(
              //                                 width: 30.00.wp,
              //                                 height: 0.20.hp,
              //                                 color: const Color(0xffE8E8E8),
              //                               ),
              //                             ],
              //                           ),
              //                           SizedBox(height: 3.00.hp),

              //                           SizedBox(height: 5.00.hp),
              //                           GestureDetector(
              //                             onTap: () {},
              //                             child: Row(
              //                               mainAxisAlignment:
              //                                   MainAxisAlignment.center,
              //                               children: [
              //                                 Text(
              //                                   'Don’t have an account ? ',
              //                                   style: GoogleFonts.poppins(
              //                                       textStyle: TextStyle(
              //                                           fontSize: 10.00.sp,
              //                                           color: const Color(
              //                                               0xff373737),
              //                                           fontWeight:
              //                                               FontWeight.w500)),
              //                                 ),
              //                                 Text(
              //                                   'Create Now',
              //                                   style: GoogleFonts.poppins(
              //                                       textStyle: TextStyle(
              //                                           fontSize: 9.00.sp,
              //                                           color: appcolor,
              //                                           fontWeight:
              //                                               FontWeight.w600)),
              //                                 )
              //                               ],
              //                             ),
              //                           ),
              //                           SizedBox(height: 1.00.hp),
              //                         ],
              //                       ),
              //                     ),
              //                   ));
              //             },
              //             // minChildSize<=initialChildSize
              //             // initial size of the sheet when app is opened.
              //             // default value 0.5
              //             initialChildSize: .9, //will take 30% of screen space
              //             //minimum size to which sheet can be dropped down.
              //             // default value .25
              //             minChildSize: .85,

              //             //max size to which  sheet can be dragged up
              //             //default value 1.0
              //             maxChildSize: 0.95,
              //           ),
              //         ],
              //       );
              //       // return Container(
              //       //   height: 40.0.hp,
              //       //   width: 100.0.wp,
              //       //   child: Column(
              //       //     children: [
              //       //       ProfileImage(),
              //       //       DetailsSection(),
              //       //     ],
              //       //   ),
              //       // );
              //     });

              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25.0))),
                  backgroundColor: screenbackground,
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => Padding(
                      padding: EdgeInsets.only(
                          right: 20,
                          left: 20,
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Center(
                              child: Text(
                                'Edit Profile',
                                style: subtitleStyle,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            ProfileImage(),
                            DetailsSection(),
                            SizedBox(height: 10),
                            SmallActionButton(
                              press: () async {
                                Get.back();
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
                          ])));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 9),
              child: Image.asset(
                'assets/images/userprofile.png',
                height: 30,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
