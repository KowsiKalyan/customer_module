import 'dart:async';
import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:customermodule/all_packages.dart';

import 'order_tracking.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var paymentsvia = [
    'Razorpay',
    'Credit/Debit/ATM Card',
    'UPI',
    'Wallet/Postpaid',
    'Net Banking',
    'Cash on Delivery'
  ];
  var image = [
    'assets/images/razorpay.png',
    'assets/images/phonepe.png',
    'assets/images/gpay.png',
    'assets/images/gpay.png',
    'assets/images/gpay.png',
    'assets/images/gpay.png'
  ];
  var animationimage = [
    'assets/images/gpay.png',
    'assets/images/phonepe.png',
    'assets/images/paytm.png',
    'assets/images/upi.png',
  ];
  var selectedindex;
  var indexselect = 0;
  var _oneValue = '';
  void _onItemTapped(int index) {
    setState(() {
      indexselect = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 10,
            backgroundColor: appcolor,
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back)),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.notifications,
                  color: screenbackground,
                  size: 20,
                ),
              ),
            ],
            title: Text(
              'PAYMENT',
              style: loginbuttonstyle,
            )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0, top: 10.0),
                child: Text(
                  'Select Payment Method',
                  style: toptitleStyleappcolor,
                ),
              ),
              Container(
                height: 70.0.hp,
                child: ListView.builder(
                  itemCount: paymentsvia.length,
                  controller: ScrollController(),
                  itemBuilder: (context, index) => Column(
                    children: [
                      Divider(
                        color: screenbackground,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 8.0.hp,
                        color: Colors.white,
                        child: RadioListTile(
                          activeColor: appcolor,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                paymentsvia[index],
                                style: subtitleStyle,
                              ),
                              index == 0
                                  ? Container(
                                      height: 10.0.hp,
                                      width: 17.0.wp,
                                      child: Image.asset(
                                          'assets/images/razorpay.png'))
                                  : index == 2 || index == 3
                                      ? CarouselSlider.builder(
                                          itemCount: animationimage.length,
                                          itemBuilder: (BuildContext context,
                                                  int itemIndex,
                                                  int pageViewIndex) =>
                                              Container(
                                                  child: Container(
                                                      height: 5.0.hp,
                                                      width: 10.0.wp,
                                                      child: Image.asset(
                                                          animationimage[
                                                                  itemIndex]
                                                              .toString()))),
                                          options: CarouselOptions(
                                            autoPlay: true,
                                            enlargeCenterPage: true,
                                            viewportFraction: 0.9,
                                            aspectRatio: 2.0,
                                            initialPage: 2,
                                          ),
                                        )
                                      : Container()
                            ],
                          ),
                          value: paymentsvia[index],
                          groupValue: _oneValue,
                          onChanged: (value) {
                            setState(() {
                              _oneValue = value.toString();
                            });
                          },
                        ),
                      ),
                      index == 1
                          ? Container(
                              height: 30.0.hp,
                              width: 100.0.wp,
                              color: screenbackground,
                              padding: EdgeInsets.only(left: 40),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Card name',
                                    style: productbold,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 6.00.hp,
                                    width: 80.00.wp,
                                    child: TextFormField(
                                      style: forminputstyle,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: const BorderSide(
                                                color: appcolor, width: 1),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                                color: const Color(0xffC6C6C6)
                                                    .withOpacity(0.5),
                                                width: 1),
                                          ),
                                          fillColor: const Color(0xffC6C6C6),
                                          hintText: 'Enter card name',
                                          contentPadding:
                                              const EdgeInsets.only(left: 10),
                                          hintStyle: formhintstyle,
                                          border: const OutlineInputBorder(
                                            gapPadding: 4,
                                          )),
                                    ),
                                  ),
                                  Text(
                                    'Card Number',
                                    style: productbold,
                                  ),
                                  Container(
                                    color: Colors.white,
                                    height: 6.00.hp,
                                    width: 80.00.wp,
                                    child: TextFormField(
                                      style: forminputstyle,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: const BorderSide(
                                                color: appcolor, width: 1),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide(
                                                color: const Color(0xffC6C6C6)
                                                    .withOpacity(0.5),
                                                width: 1),
                                          ),
                                          suffixIcon: Icon(Icons.credit_card),
                                          fillColor: const Color(0xffC6C6C6),
                                          hintText: 'Enter card name',
                                          contentPadding:
                                              const EdgeInsets.only(left: 10),
                                          hintStyle: formhintstyle,
                                          border: const OutlineInputBorder(
                                            gapPadding: 4,
                                          )),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Expire Date',
                                        style: productbold,
                                      ),
                                      SizedBox(
                                        width: 20.00.wp,
                                      ),
                                      Text(
                                        'security Code',
                                        style: productbold,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        height: 6.00.hp,
                                        width: 35.00.wp,
                                        child: TextFormField(
                                          style: forminputstyle,
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                borderSide: const BorderSide(
                                                    color: appcolor, width: 1),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                borderSide: BorderSide(
                                                    color:
                                                        const Color(0xffC6C6C6)
                                                            .withOpacity(0.5),
                                                    width: 1),
                                              ),
                                              fillColor:
                                                  const Color(0xffC6C6C6),
                                              hintText: 'MM/YY',
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 10),
                                              hintStyle: formhintstyle,
                                              border: const OutlineInputBorder(
                                                gapPadding: 4,
                                              )),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 6.00.wp,
                                      ),
                                      Container(
                                        color: Colors.white,
                                        height: 6.00.hp,
                                        width: 35.00.wp,
                                        child: TextFormField(
                                          style: forminputstyle,
                                          decoration: InputDecoration(
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                borderSide: const BorderSide(
                                                    color: appcolor, width: 1),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                borderSide: BorderSide(
                                                    color:
                                                        const Color(0xffC6C6C6)
                                                            .withOpacity(0.5),
                                                    width: 1),
                                              ),
                                              fillColor:
                                                  const Color(0xffC6C6C6),
                                              hintText: 'CVV code',
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 10),
                                              hintStyle: formhintstyle,
                                              border: const OutlineInputBorder(
                                                gapPadding: 4,
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 15.0.hp,
          width: 100.0.wp,
          color: screenbackground,
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.all(5),
                  child: Image.asset('assets/images/allpayments.png')),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    height: 7.0.hp,
                    width: 50.0.wp,
                    color: screenbackground,
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
                              '\u{20B9}47',
                              style: price,
                            ),
                          ],
                        ),
                        Text(
                          'VAT included,where applicable',
                          style: formhintstyle,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (() {
                      setState(() {
                        Get.to(OrderTrackingUi());
                      });
                    }),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 5.0.hp,
                        width: 35.0.wp,
                        decoration: BoxDecoration(
                            color: appcolor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Confirm Order',
                            style: placeorder,
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
