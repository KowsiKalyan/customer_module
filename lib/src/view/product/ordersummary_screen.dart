import 'package:customermodule/src/view/product/deiveryaddress_screen.dart';

import '../../../all_packages.dart';
import '../../../utils/common_function/row_customwidget.dart';
import 'orderplaced_screen.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //   backgroundColor: bgcolor,
        appBar: AppBar(
          backgroundColor: appcolor,
          centerTitle: true,
          title: Text(
            'Order Summary',
            style: apptitle,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 8.0.hp,
                width: 100.0.wp,
                //color: screenbackground,
                child: ListTile(
                  title: Image.asset(
                    'assets/images/truck.gif',
                    height: 5.0.hp,
                    width: 20.0.wp,
                  ),
                  trailing: Text(
                    'Estimated Delivery by friday,30th Dec',
                    style: subtitleStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 1.0.hp,
              ),
              Container(
                height: 18.0.hp,
                width: 100.0.wp,
                //color: screenbackground,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 10.0.hp,
                            child: Image.asset('assets/images/dress1.jpg')),
                        Column(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 50.0.wp,
                              child: Text(
                                  'Dipani Fashion women Embroided kurti',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  style: subtitleStyleappcolor),
                            ),
                            Text(
                              '467',
                              style: orderdetails,
                            ),
                            Text(
                              'All returns',
                              style: orderdetails,
                            ),
                            Row(
                              children: [
                                Text(
                                  'size:2XL',
                                  style: orderdetails,
                                ),
                                SizedBox(
                                  width: 2.0.wp,
                                ),
                                Text(
                                  'qty:1',
                                  style: orderdetails,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'supplier:DIPANI',
                          style: orderdetails,
                        ),
                        SizedBox(
                          width: 2.0.wp,
                        ),
                        Text(
                          'Free delivery',
                          style: freedelivery,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 1.0.hp,
              ),
              InkWell(
                onTap: (() {
                  Get.to(DeliveryAddressScreen());
                }),
                child: Container(
                  height: 18.0.hp,
                  width: 100.0.wp,
                  // color: screenbackground,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28.0, right: 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery Address',
                          style: subtitleStyleappcolor,
                        ),
                        Text(
                          'Kowsalya',
                          style: orderdetails,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '17/4 Sathukudal Road,Vriddhachalam',
                              style: orderdetails,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                              color: toptitlecolor,
                            )
                          ],
                        ),
                        Text(
                          'Opposite mechanic shop',
                          style: orderdetails,
                        ),
                        Text(
                          'Cuddalore district',
                          style: orderdetails,
                        ),
                        Text(
                          '7010644326',
                          style: orderdetails,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.0.hp,
              ),
              InkWell(
                onTap: (() {
                  Get.to(PaymentScreen());
                }),
                child: Container(
                  height: 8.0.hp,
                  width: 100.0.wp,
                  //color: screenbackground,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 28.0, right: 28),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment Mode',
                          style: subtitleStyleappcolor,
                        ),
                        SizedBox(
                          height: 1.0.hp,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cash on Delivery',
                              style: orderdetails,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: toptitlecolor,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 1.0.hp,
              ),
              Container(
                height: 25.0.hp,
                width: 100.0.wp,
                //color: screenbackground,
                child: Padding(
                  padding: const EdgeInsets.only(left: 28.0, right: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price Details (1 item)',
                        style: subtitleStyleappcolor,
                      ),
                      SizedBox(
                        height: 1.0.hp,
                      ),
                      RowCustomWidget(
                        rowtext1: 'Price',
                        rowtext2: '1000',
                      ),
                      RowCustomWidget(
                        rowtext1: 'Tax amount',
                        rowtext2: '10',
                      ),
                      RowCustomWidget(
                        rowtext1: 'Delivery charge',
                        rowtext2: '50',
                      ),
                      RowCustomWidget(
                        rowtext1: 'Coupon code discount',
                        rowtext2: '100',
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Total',
                            style: toptitleStyleappcolor,
                          ),
                          Text(
                            '467',
                            style: toptitleStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 10.0.hp,
          width: 100.0.wp,
          //color: screenbackground,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 8.0.hp,
                    width: 50.0.wp,
                    // color: screenbackground,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Total:',
                              style: subtitleStyle,
                            ),
                            Text(
                              '\u{20B9}467',
                              style: price,
                            ),
                          ],
                        ),
                        Text(
                          'VIEW PRICE DETAILS',
                          style: subtitleStyleappcolor,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (() {
                      setState(() {
                        // Get.to(OrderTrackingUi());
                        Get.to(OrderSummary());
                      });
                    }),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: InkWell(
                        onTap: (() {
                          Get.to(OrderPlacedScreen());
                        }),
                        child: Container(
                          height: 5.0.hp,
                          width: 40.0.wp,
                          decoration: BoxDecoration(
                              color: buttoncolor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Place Order',
                              style: placeorder,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
