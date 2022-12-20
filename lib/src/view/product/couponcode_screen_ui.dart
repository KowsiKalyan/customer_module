import '../../../all_packages.dart';

class CouponcodeScreen extends StatefulWidget {
  const CouponcodeScreen({super.key});

  @override
  State<CouponcodeScreen> createState() => _CouponcodeScreenState();
}

class _CouponcodeScreenState extends State<CouponcodeScreen> {
  var selectedindex = 0;
  var couponname = ['Top Coupons', 'Paytm', 'Google Pay', 'Kotak', 'ICICI'];
  var offerlist = [
    'Maximum instant discount of 20',
    'Offer valid once per use',
    'offer only applicable with Gpay',
    'Offer valid for first time Gpay users',
    'Other TNC s may apply',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: appcolor,
        leading: InkWell(
          onTap: (() {
            Get.back();
          }),
          child: Icon(
            Icons.arrow_back,
            color: screenbackground,
          ),
        ),
        title: Text(
          'Coupons for you',
          style: apptitle,
        ),
      ),
      body: ListView.builder(
          itemCount: couponname.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  index == 0
                      ? InkWell(
                          onTap: (() {
                            setState(() {
                              selectedindex = index;
                            });
                          }),
                          child: Container(
                            height: 5.0.hp,
                            width: 100.0.wp,
                            // decoration: BoxDecoration(
                            //     color: screenbackground,
                            //     borderRadius: BorderRadius.circular(20)),
                            child: Card(
                              color: selectedindex == index
                                  ? appcolor
                                  : screenbackground,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 1,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        couponname[index],
                                        style: selectedindex == index
                                            ? buttontext
                                            : subtitleStyle,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down_outlined,
                                      color: selectedindex == index
                                          ? screenbackground
                                          : appcolor,
                                    )
                                  ]),
                            ),
                          ),
                        )
                      : InkWell(
                          onTap: (() {
                            setState(() {
                              selectedindex = index;
                            });
                          }),
                          child: Container(
                            height: 5.0.hp,
                            width: 100.0.wp,
                            // decoration: BoxDecoration(
                            //     color: screenbackground,
                            //     borderRadius: BorderRadius.circular(20)),
                            child: Card(
                              color: selectedindex == index
                                  ? appcolor
                                  : screenbackground,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Container(
                                  //   height: 4.0.hp,
                                  //   width: 10.0.wp,
                                  //   decoration: BoxDecoration(
                                  //       // border: Border.all(
                                  //       //   color: Colors.grey.shade200,
                                  //       // ),
                                  //       borderRadius:
                                  //           BorderRadius.circular(10)),
                                  //   child: Image.asset(
                                  //     'assets/images/paytm.png',
                                  //     height: 3.0.hp,
                                  //   ),
                                  // ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    width: 30.0.wp,
                                    child: Text(
                                      couponname[index],
                                      style: selectedindex == index
                                          ? buttontext
                                          : subtitleStyle,
                                    ),
                                  ),
                                  Container(
                                    width: 35.0.wp,
                                    padding: const EdgeInsets.only(left: 68.0),
                                    child: Text(
                                      '1 offer',
                                      style: selectedindex == index
                                          ? buttontext
                                          : formhintstylesearch,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: selectedindex == index
                                        ? screenbackground
                                        : appcolor,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                  selectedindex == index
                      ? Container(
                          height: 20.0.hp,
                          width: 100.0.wp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              //set border radius more than 50% of height and width to make circle
                            ),
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '30% OFF up to 75',
                                    style: offer,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 4.0.hp,
                                        width: 28.0.wp,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey.shade200),
                                            color: screenbackground,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Text(
                                          'CShop10',
                                          style: subtitleStyle,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          showModalBottomSheet<void>(
                                            // isDismissible: true,
                                            // barrierColor: Colors.transparent,
                                            context: context,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20))),
                                            builder: (BuildContext context) {
                                              return SizedBox(
                                                height: 50.0.hp,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10.0,
                                                          right: 10.0,
                                                          top: 10),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Coupon Details',
                                                            style:
                                                                toptitleStyle,
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              Get.back();
                                                            },
                                                            child: CircleAvatar(
                                                              backgroundColor:
                                                                  appcolor,
                                                              radius: 20,
                                                              child: Icon(
                                                                Icons.close,
                                                                color:
                                                                    screenbackground,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1,
                                                      ),
                                                      Container(
                                                        height: 4.0.hp,
                                                        child: Image.asset(
                                                          'assets/images/paytm.png',
                                                          height: 3.0.hp,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Get Flat 20 OFF',
                                                        style: toptitleStyle,
                                                      ),
                                                      Text(
                                                        'Valid on other items worth 159 or more',
                                                        style:
                                                            formhintstylesearch,
                                                      ),
                                                      Divider(
                                                        thickness: 1,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            height: 4.0.hp,
                                                            width: 30.0.wp,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade200),
                                                                color:
                                                                    screenbackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Text(
                                                              'Hello Gpay                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ay',
                                                              style:
                                                                  subtitleStyle,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ),
                                                          Container(
                                                            height: 4.0.hp,
                                                            width: 20.0.wp,
                                                            decoration:
                                                                BoxDecoration(
                                                              border: Border.all(
                                                                  color:
                                                                      appcolor),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                'Apply',
                                                                style:
                                                                    subtitleStyle,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1,
                                                      ),
                                                      Container(
                                                        height: 20.0.hp,
                                                        width: 100.0.wp,
                                                        child: ListView.builder(
                                                            itemCount: offerlist
                                                                .length,
                                                            itemBuilder:
                                                                ((context, e) {
                                                              return Row(
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .check_circle,
                                                                    color: Colors
                                                                        .green,
                                                                    size: 20,
                                                                  ),
                                                                  Text(
                                                                    offerlist[e]
                                                                        .toString(),
                                                                    style:
                                                                        forminputstyle,
                                                                  )
                                                                ],
                                                              );
                                                            })),
                                                      ),
                                                      SizedBox(
                                                        height: 2.0.hp,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                          height: 4.0.hp,
                                          width: 30.0.wp,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey.shade200),
                                            color: Color(0xff283736),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                'View Details',
                                                style: viewdetails,
                                              ),
                                              Icon(
                                                Icons
                                                    .keyboard_arrow_right_sharp,
                                                size: 20,
                                                color: screenbackground,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Save 53.7 with this code',
                                        style: subtitleStyleblue,
                                      ),
                                      Container(
                                        height: 4.0.hp,
                                        width: 20.0.wp,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: appcolor),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Apply',
                                            style: subtitleStyle,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            );
          }),
    );
  }
}
