import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../all_packages.dart';

class WalletHistoryScreen extends StatefulWidget {
  const WalletHistoryScreen({super.key});

  @override
  State<WalletHistoryScreen> createState() => _WalletHistoryScreenState();
}

class _WalletHistoryScreenState extends State<WalletHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
          ),
          child: Container(
            height: 3.0.hp,
            width: 100.0.wp,
            child: Text(
              'Wallet History',
              style: subtitleStylebold,
            ),
          ),
        ),
        Container(
          height: 100.0.hp,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        height: 15.0.hp,
                        width: 100.0.wp,
                        decoration: BoxDecoration(
                            border: Border.all(color: formhintcolor),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        'Pending',
                                        style: placeorder,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Payment Address:',
                                    style: orderdetails,
                                  ),
                                  Text(
                                    'vriddhachalam',
                                    style: orderdetails,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Payment type:',
                                    style: orderdetails,
                                  ),
                                  Text(
                                    'Customer',
                                    style: orderdetails,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
