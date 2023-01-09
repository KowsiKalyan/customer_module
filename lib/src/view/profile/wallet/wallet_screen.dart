import 'dart:developer';

import 'package:customermodule/all_packages.dart';
import 'package:customermodule/src/view/My%20order/delivered_order.dart';
import 'package:customermodule/src/view/profile/wallet/transaction_history_ui.dart';
import 'package:customermodule/src/view/profile/wallet/wallet_history_ui.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../utils/common_function/paymentcustomwidget.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  var selectgst = 0;
  var selectedindex = 0;
  TextEditingController amount = TextEditingController();
  TextEditingController message = TextEditingController();
  var paymentmethodname = ['RazorPay', 'Gpay', 'PhonePe', 'Paytm'];
  var paymentimages = [
    'assets/images/razorpay.png',
    'assets/images/gpay.jpg',
    'assets/images/phonepe.png',
    'assets/images/paytm.png',
  ];
  showAddMoney() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0)), //this right here
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PaymentCustomWidget(
                          text: 'Amount',
                          controller: amount,
                        ),
                        SizedBox(
                          height: 1.0.hp,
                        ),
                        PaymentCustomWidget(
                          text: 'Message',
                          controller: message,
                        ),
                        SizedBox(
                          height: 1.0.hp,
                        ),
                        Text(
                          'Select Payment Method',
                          style: subtitleStyleappcolor,
                        ),
                        Container(
                          height: 25.0.hp,
                          padding: EdgeInsets.all(10),
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: paymentmethodname.length,
                              itemBuilder: ((context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          InkWell(
                                            onTap: (() {
                                              setState(() {
                                                selectedindex = index;
                                              });
                                            }),
                                            child: Container(
                                              height: 3.0.hp,
                                              width: 5.0.wp,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          selectedindex == index
                                                              ? appcolor
                                                              : buttoncolor),
                                                  // color: toptitlecolor,
                                                  shape: BoxShape.circle),
                                            ),
                                          ),
                                          selectedindex == index
                                              ? Positioned(
                                                  bottom: 9,
                                                  left: 0,
                                                  right: 0,
                                                  child: Container(
                                                    height: 1.0.hp,
                                                    width: 3.0.wp,
                                                    decoration: BoxDecoration(
                                                        color: selectedindex ==
                                                                index
                                                            ? appcolor
                                                            : buttoncolor,
                                                        // color: toptitlecolor,
                                                        shape: BoxShape.circle),
                                                  ))
                                              : Container()
                                        ],
                                      ),
                                      SizedBox(
                                        width: 5.0.wp,
                                      ),
                                      Container(
                                        width: 10.0.hp,
                                        child: Text(
                                          paymentmethodname[index].toString(),
                                          style: orderdetails,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.0.wp,
                                      ),
                                      Image.asset(
                                        paymentimages[index].toString(),
                                        height: 3.0.hp,
                                      )
                                    ],
                                  ),
                                );
                              })),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: (() {
                                  Get.back();
                                }),
                                child: Text('Cancel')),
                            TextButton(
                                onPressed: (() {
                                  Get.back();
                                }),
                                child: Text('Send'))
                          ],
                        )
                      ],
                    ),
                  ),
                ));
          });
        });
  }

  showWithdraw() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0)), //this right here
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Select Wihdrawal Request',
                          style: subtitleStyleappcolor,
                        ),
                        Divider(),
                        SizedBox(
                          height: 1.0.hp,
                        ),
                        Text(
                          'Withdrawal Amount',
                          style: orderdetails,
                        ),
                        Container(
                          height: 5.00.hp,
                          width: 50.00.wp,
                          decoration: BoxDecoration(
                              color: screenbackground,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextFormField(
                            //controller: controller,
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 10.00.sp,
                                    color: forminputcolor,
                                    fontWeight: FontWeight.w500)),
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                      color: toptitlecolor, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                      color: const Color(0xffC6C6C6)
                                          .withOpacity(0.5),
                                      width: 1),
                                ),
                                fillColor: const Color(0xffC6C6C6),
                                contentPadding: const EdgeInsets.only(left: 10),
                                hintStyle: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 10.00.sp,
                                        color: toptitlecolor,
                                        fontWeight: FontWeight.w500)),
                                border: const OutlineInputBorder(
                                  gapPadding: 4,
                                )),
                          ),
                        ),
                        Divider(),
                        Text(
                          'Bank details',
                          style: orderdetails,
                        ),
                        Container(
                          height: 15.00.hp,
                          width: 50.00.wp,
                          decoration: BoxDecoration(
                              color: screenbackground,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextFormField(
                            //controller: controller,
                            maxLines: 5,
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 10.00.sp,
                                    color: forminputcolor,
                                    fontWeight: FontWeight.w500)),
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                      color: toptitlecolor, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                      color: const Color(0xffC6C6C6)
                                          .withOpacity(0.5),
                                      width: 1),
                                ),
                                hintText: 'Account No:\nIFSC code:\nName:',
                                fillColor: const Color(0xffC6C6C6),
                                contentPadding: const EdgeInsets.only(left: 10),
                                hintStyle: GoogleFonts.jost(
                                    textStyle: TextStyle(
                                        fontSize: 10.00.sp,
                                        color: toptitlecolor,
                                        fontWeight: FontWeight.w500)),
                                border: const OutlineInputBorder(
                                  gapPadding: 4,
                                )),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: (() {
                                  Get.back();
                                }),
                                child: Text('Cancel')),
                            TextButton(
                                onPressed: (() {
                                  Get.back();
                                }),
                                child: Text('Send'))
                          ],
                        )
                      ],
                    ),
                  ),
                ));
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
            backgroundColor: appcolor,
            elevation: 10,
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(Icons.arrow_back)),
            ),
            title: Text(
              'My Wallet',
              style: loginbuttonstyle,
            )),
        body: SingleChildScrollView(
          child: Container(
            width: 100.00.wp,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0))),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectgst = 0;
                      });
                    },
                    child: Material(
                      elevation: selectgst == 0 ? 5 : 0,
                      child: Container(
                        height: 7.00.hp,
                        width: 47.00.wp,
                        decoration: BoxDecoration(
                            color: selectgst == 0 ? buttoncolor : Colors.white,
                            border: Border.all(
                              color:
                                  selectgst == 0 ? buttoncolor : Colors.white,
                            )),
                        child: Center(
                            child: Text(
                          'Transaction History',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 11.00.sp,
                                  color: selectgst == 0
                                      ? Colors.white
                                      : const Color(0xffA3A3A3),
                                  fontWeight: FontWeight.w500)),
                        )),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectgst = 1;
                      });
                    },
                    child: Material(
                      elevation: selectgst == 1 ? 5 : 0,
                      child: Container(
                        height: 7.00.hp,
                        width: 47.00.wp,
                        decoration: BoxDecoration(
                            color: selectgst == 1 ? buttoncolor : Colors.white,
                            border: Border.all(
                              color: selectgst == 1
                                  ? buttoncolor
                                  : const Color(0xffC6C6C6).withOpacity(0.5),
                            )),
                        child: Center(
                            child: Text(
                          'Wallet History',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 11.00.sp,
                                  color: selectgst == 1
                                      ? Colors.white
                                      : const Color(0xffA3A3A3),
                                  fontWeight: FontWeight.w500)),
                        )),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 20.0.hp,
                  width: 100.0.wp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.balance),
                              SizedBox(
                                width: 1.0.wp,
                              ),
                              Text(
                                'Current Balance',
                                style: toptitleStyle,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, top: 5),
                          child: Text(
                            '68,248.95',
                            style: toptitleStyle,
                          ),
                        ),
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: (() {
                                showAddMoney();
                              }),
                              child: Container(
                                height: 5.0.hp,
                                width: 35.0.wp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.orange[800]!,
                                      Colors.orange[700]!,
                                      Colors.orange[600]!,
                                      Colors.orange[400]!,
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Add Money',
                                    style: placeorder,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.0.wp,
                            ),
                            InkWell(
                              onTap: (() {
                                showWithdraw();
                              }),
                              child: Container(
                                height: 5.0.hp,
                                width: 35.0.wp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Colors.orange[800]!,
                                      Colors.orange[700]!,
                                      Colors.orange[600]!,
                                      Colors.orange[400]!,
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'withdraw',
                                    style: placeorder,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              selectgst == 0
                  ? TransactionHistoryScreen()
                  : WalletHistoryScreen()
            ]),
          ),
        ));
  }
}
