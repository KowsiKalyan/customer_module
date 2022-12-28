import 'dart:async';

import 'package:customermodule/all_packages.dart';
import 'package:customermodule/src/view/explore/myorder/cancelled_order.dart';
import 'package:customermodule/src/view/explore/myorder/delivered_order.dart';
import 'package:customermodule/src/view/explore/myorder/processing_order.dart';
import 'package:flutter/material.dart';

import 'myorder/alldetails_screen.dart';
import 'myorder/return_order.dart';
import 'myorder/shipped_order.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: MyWidget()),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var firstBuild = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
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
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Icon(
                    Icons.add_shopping_cart_rounded,
                    color: screenbackground,
                    size: 20,
                  ),
                ),
              ],
              title: Text(
                'My Orders',
                style: loginbuttonstyle,
              )),
          body: Column(
            children: [
              SizedBox(
                height: 2.0.hp,
              ),
              TabBar(
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    color: orange, borderRadius: BorderRadius.circular(25.0)),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Container(
                    width: 20.0.wp,
                    height: 4.0.hp,
                    child: Tab(
                      text: 'All Details',
                    ),
                  ),
                  Container(
                    width: 20.0.wp,
                    height: 4.0.hp,
                    child: Tab(
                      text: 'Processing',
                    ),
                  ),
                  Container(
                    width: 20.0.wp,
                    height: 4.0.hp,
                    child: Tab(
                      text: 'Shipped',
                    ),
                  ),
                  Container(
                    width: 20.0.wp,
                    height: 4.0.hp,
                    child: Tab(
                      text: 'Delivered',
                    ),
                  ),
                  Container(
                    width: 20.0.wp,
                    height: 4.0.hp,
                    child: Tab(
                      text: 'Cancelled',
                    ),
                  ),
                  Container(
                    width: 20.0.wp,
                    height: 4.0.hp,
                    child: Tab(
                      text: 'Returned',
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Center(
                    child: AllDetails(),
                  ),
                  Center(
                    child: ProcessingOrder(),
                  ),
                  Center(
                    child: ShippedOrder(),
                  ),
                  Center(
                    child: DeliveredOrder(),
                  ),
                  Center(
                    child: CancelledOrder(),
                  ),
                  Center(
                    child: ReturnOrder(),
                  )
                ],
              ))
            ],
          )),
    );
  }
}
