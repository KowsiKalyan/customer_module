import 'package:customermodule/all_packages.dart';
import 'package:customermodule/src/view/My%20order/delivered_order.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'wallet_history.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
          actions: [
            InkWell(
              onTap: () {
                showMenu<String>(
                  context: context,
                  position: RelativeRect.fromLTRB(25.0, 25.0, 0.0,
                      20.0.wp), //position where you want to show the menu on screen
                  items: [
                    PopupMenuItem<String>(
                        child: Center(
                            child: Text(
                          'Tansaction History',
                          style: subtitleStyle,
                        )),
                        value: '1'),
                    PopupMenuItem<String>(
                        child: Center(
                            child: Text(
                          'Wallet History',
                          style: subtitleStyle,
                        )),
                        value: '2'),
                  ],
                  elevation: 8.0,
                ).then<void>((String? itemSelected) {
                  if (itemSelected == null) return;

                  if (itemSelected == "1") {
                    Get.to(const WalletScreen());
                  } else if (itemSelected == "2") {
                    Get.to(WalletHistory());
                    // Get.to(const LoginScreen());
                  } else {
                    //code here
                  }
                });
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.filter_alt_outlined,
                  color: screenbackground,
                  size: 20,
                ),
              ),
            ),
          ],
          title: Text(
            'My Wallet',
            style: loginbuttonstyle,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 20.0.hp,
                width: 100.0.wp,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: screenbackground),
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
                        Container(
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
                        SizedBox(
                          width: 2.0.wp,
                        ),
                        Container(
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
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Container(
                height: 3.0.hp,
                width: 100.0.wp,
                child: Text(
                  'Wallet Transaction History',
                  style: subtitleStyle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                height: 15.0.hp,
                width: 100.0.wp,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Amount: \u{20B9}20.00',
                            style: orderdetails,
                          ),
                          Text(
                            '22-12-2022,15:47:23',
                            style: orderdetails,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ID: 5682',
                            style: orderdetails,
                          ),
                          Container(
                            height: 3.0.hp,
                            width: 20.0.wp,
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
                                'Debit',
                                style: placeorder,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Message:',
                            style: orderdetails,
                          ),
                          Text(
                            'Used against order placement',
                            style: orderdetails,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
