library order_tracker;

import 'package:customermodule/all_packages.dart';
import 'package:flutter/material.dart';

class OrderTracker extends StatefulWidget {
  ///This variable is used to set status of order, this get only enum which is already in a package below example present.
  /// Status.order
  final Status? status;

  /// This variable is used to get list of order sub title and date to show present status of product.
  final List<TextDto>? orderTitleAndDateList;

  /// This variable is used to get list of shipped sub title and date to show present status of product.
  final List<TextDto>? shippedTitleAndDateList;

  /// This variable is used to get list of outOfDelivery sub title and date to show present status of product.
  final List<TextDto>? outOfDeliveryTitleAndDateList;

  /// This variable is used to get list of delivered sub title and date to show present status of product.
  final List<TextDto>? deliveredTitleAndDateList;

  /// This variable is used to change color of active animation border.
  final Color? activeColor;

  /// This variable is used to change color of inactive animation border.
  final Color? inActiveColor;

  /// This variable is used to change style of heading title text.
  final TextStyle? headingTitleStyle;

  /// This variable is used to change style of heading date text.
  final TextStyle? headingDateTextStyle;

  /// This variable is used to change style of sub title text.
  final TextStyle? subTitleTextStyle;

  /// This variable is used to change style of sub date text.
  final TextStyle? subDateTextStyle;

  const OrderTracker(
      {Key? key,
      required this.status,
      this.orderTitleAndDateList,
      this.shippedTitleAndDateList,
      this.outOfDeliveryTitleAndDateList,
      this.deliveredTitleAndDateList,
      this.activeColor,
      this.inActiveColor,
      this.headingTitleStyle,
      this.headingDateTextStyle,
      this.subTitleTextStyle,
      this.subDateTextStyle})
      : super(key: key);

  @override
  State<OrderTracker> createState() => _OrderTrackerState();
}

class _OrderTrackerState extends State<OrderTracker>
    with TickerProviderStateMixin {
  ///This is first animation progress bar controller.
  AnimationController? controller;

  ///This is second animation progress bar controller.
  AnimationController? controller2;

  ///This is third animation progress bar controller.
  AnimationController? controller3;

  ///This is conditional variable.
  bool isFirst = false;
  bool isSecond = false;
  bool isThird = false;

  var images = [
    'assets/images/orderplaced.png',
    'assets/images/confirmed.png',
    'assets/images/ondelivery.png',
    'assets/images/delivered.png',
  ];
  // var index = <int>[];
  var index;
  @override
  void initState() {
    if (widget.status?.name == Status.order.name) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
          }
          setState(() {});
        });
    } else if (widget.status?.name == Status.shipped.name) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });
    } else if (widget.status?.name == Status.outOfDelivery.name ||
        widget.status?.name == Status.delivered.name) {
      ///initialize first controller
      controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller?.value != null && controller!.value > 0.99) {
            controller?.stop();
            controller2?.stop();
            controller3?.stop();
            isFirst = true;
            controller2?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize second controller
      controller2 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller2?.value != null && controller2!.value > 0.99) {
            controller2?.stop();
            controller3?.stop();
            isSecond = true;
            controller3?.forward(from: 0.0);
          }
          setState(() {});
        });

      ///initialize third controller
      controller3 = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
      )..addListener(() {
          if (controller3?.value != null && controller3!.value > 0.99) {
            controller3?.stop();
            isThird = true;
          }
          setState(() {});
        });
    }

    controller?.repeat(reverse: false);
    controller2?.repeat(reverse: false);
    controller3?.repeat(reverse: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < images.length; i++) {
      setState(() {
        index = images[i];
      });
    }
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(
            color: screenbackground,
          ),
          Container(
            height: 25.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, top: 25),
                  child: Text(
                    'Track Your Order',
                    style: toptitleStyleappcolor,
                  ),
                ),
                SizedBox(
                  height: 2.0.hp,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 6.0.hp,
                          width: 20.0.wp,
                          child: Image.asset('assets/images/orderplaced.png')),
                      Container(
                          height: 6.0.hp,
                          width: 20.0.wp,
                          child: Image.asset('assets/images/confirmed.png')),
                      Container(
                          height: 6.0.hp,
                          width: 20.0.wp,
                          child: Image.asset('assets/images/ondelivery.png')),
                      Container(
                          height: 6.0.hp,
                          width: 20.0.wp,
                          child: Image.asset('assets/images/delivered.png'))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 2.0.hp,
                        width: 18.0.wp,
                        child: FittedBox(
                            child: Text(
                          'Order Placed',
                          style: notificationtitle,
                        ))),
                    Container(
                        height: 2.0.hp,
                        width: 18.0.wp,
                        child: FittedBox(
                            child: Text(
                          'Confirmed',
                          style: notificationtitle,
                          textAlign: TextAlign.center,
                        ))),
                    Container(
                        height: 2.0.hp,
                        width: 18.0.wp,
                        child: FittedBox(
                            child: Text(
                          'Ondelivery',
                          style: notificationtitle,
                        ))),
                    Container(
                        height: 2.0.hp,
                        width: 18.0.wp,
                        child: FittedBox(
                            child: Text(
                          'Delivery',
                          style: notificationtitle,
                        ))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 3.0.hp,
                            width: 6.0.wp,
                            decoration: BoxDecoration(
                                color: widget.activeColor ?? Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.check,
                              color: screenbackground,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            height: 0.50.hp,
                            width: widget.orderTitleAndDateList != null &&
                                    widget.orderTitleAndDateList!.isNotEmpty
                                ? widget.orderTitleAndDateList!.length * 25
                                : 60,
                            child: RotatedBox(
                              quarterTurns: 1,
                              child: LinearProgressIndicator(
                                value: controller?.value ?? 0.0,
                                backgroundColor:
                                    widget.inActiveColor ?? Colors.grey[300],
                                color: widget.activeColor ?? Colors.green,
                              ),
                            ),
                          ),
                          Container(
                            height: 3.0.hp,
                            width: 6.0.wp,
                            decoration: BoxDecoration(
                                color: (widget.status?.name ==
                                                Status.shipped.name ||
                                            widget.status?.name ==
                                                Status.outOfDelivery.name ||
                                            widget.status?.name ==
                                                Status.delivered.name) &&
                                        isFirst == true
                                    ? widget.activeColor ?? Colors.green
                                    : widget.inActiveColor ?? Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.check,
                              color: screenbackground,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            height: 0.50.hp,
                            width: widget.orderTitleAndDateList != null &&
                                    widget.orderTitleAndDateList!.isNotEmpty
                                ? widget.orderTitleAndDateList!.length * 25
                                : 60,
                            child: RotatedBox(
                              quarterTurns: 1,
                              child: LinearProgressIndicator(
                                value: controller2?.value ?? 0.0,
                                backgroundColor:
                                    widget.inActiveColor ?? Colors.grey[300],
                                color: isFirst == true
                                    ? widget.activeColor ?? Colors.green
                                    : widget.inActiveColor ?? Colors.grey[300],
                              ),
                            ),
                          ),
                          Container(
                            height: 3.0.hp,
                            width: 6.0.wp,
                            decoration: BoxDecoration(
                                color: (widget.status?.name ==
                                                Status.outOfDelivery.name ||
                                            widget.status?.name ==
                                                Status.delivered.name) &&
                                        isSecond == true
                                    ? widget.activeColor ?? Colors.green
                                    : widget.inActiveColor ?? Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.check,
                              color: screenbackground,
                              size: 20,
                            ),
                          ),
                          SizedBox(
                            height: 0.50.hp,
                            width: widget.orderTitleAndDateList != null &&
                                    widget.orderTitleAndDateList!.isNotEmpty
                                ? widget.orderTitleAndDateList!.length * 25
                                : 60,
                            child: RotatedBox(
                              quarterTurns: 1,
                              child: LinearProgressIndicator(
                                value: controller3?.value ?? 0.0,
                                backgroundColor:
                                    widget.inActiveColor ?? Colors.grey[300],
                                color: isSecond == true
                                    ? widget.activeColor ?? Colors.green
                                    : widget.inActiveColor ?? Colors.grey[300],
                              ),
                            ),
                          ),
                          Container(
                            height: 3.0.hp,
                            width: 6.0.wp,
                            decoration: BoxDecoration(
                                color: widget.status?.name ==
                                            Status.delivered.name &&
                                        isThird == true
                                    ? widget.activeColor ?? Colors.green
                                    : widget.inActiveColor ?? Colors.grey[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.check,
                              color: screenbackground,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(left: 40, top: 6),
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 4,
                        );
                      },
                      itemCount: widget.deliveredTitleAndDateList != null &&
                              widget.deliveredTitleAndDateList!.isNotEmpty
                          ? widget.deliveredTitleAndDateList!.length
                          : 0),
                )
              ],
            ),
          ),
          Divider(
            color: screenbackground,
          ),
          Container(
            height: 40.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        'Order code',
                        style: orderdetails,
                      )),
                      Container(
                          child: Text(
                        'Shipping Method',
                        style: orderdetails,
                      ))
                    ],
                  ),
                  Container(
                      child: Text(
                    '2022041-122335',
                    style: subtitleStyleappcolor,
                  )),
                  SizedBox(
                    height: 1.0.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        'Order Date',
                        style: orderdetails,
                      )),
                      Container(
                          child: Text(
                        'Payment Method',
                        style: orderdetails,
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        '01-12-2022',
                        style: formhintstyle,
                      )),
                      Container(
                          child: Text(
                        'COD',
                        style: formhintstyle,
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 1.0.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        'Payment Status',
                        style: orderdetails,
                      )),
                      Container(
                          child: Text(
                        'Delivery Status',
                        style: orderdetails,
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        'Paid',
                        style: formhintstyle,
                      )),
                      Container(
                          child: Text(
                        'Order Placed',
                        style: formhintstyle,
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 1.0.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        'Shipping Address',
                        style: orderdetails,
                      )),
                      Container(
                          child: Text(
                        'Total Amount',
                        style: orderdetails,
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        'Name:Kowsalya Kalyan',
                        style: shippingdetails,
                      )),
                      Container(
                        child: Text(
                          '\u{20B9}115',
                          style: orderprice,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      child: Text(
                    'Email:kowsalya@cherritech.com',
                    style: shippingdetails,
                  )),
                  Container(
                      child: Text(
                    'Address:No.6,Pondicherry',
                    style: shippingdetails,
                  )),
                  Container(
                      child: Text(
                    'City:Pondicherry',
                    style: shippingdetails,
                  )),
                  Container(
                      child: Text(
                    'Country:India',
                    style: shippingdetails,
                  )),
                  Container(
                      child: Text(
                    'pincode:605001',
                    style: shippingdetails,
                  )),
                ],
              ),
            ),
          ),
          Divider(
            color: screenbackground,
          ),
        ],
      ),
    );
  }
}

class TextDto {
  String? title;
  String? date;

  TextDto(this.title, this.date);
}

enum Status { order, shipped, outOfDelivery, delivered }
