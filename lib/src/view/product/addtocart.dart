import 'dart:async';
import 'dart:developer';

import 'package:customermodule/all_packages.dart';
import 'package:customermodule/src/view/explore/myorder/delivered_order.dart';
import 'package:customermodule/src/view/explore/myorder/shipped_order.dart';
import 'package:customermodule/src/view/product/order_tracking.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../controller/addtocart_controller.dart';
import 'create_delivery_address.dart';
import 'deiveryaddress_screen.dart';

class AddtocartUi extends StatefulWidget {
  const AddtocartUi({super.key});

  @override
  State<AddtocartUi> createState() => _AddtocartUiState();
}

class _AddtocartUiState extends State<AddtocartUi> {
  TextEditingController quantity = TextEditingController();
  int num = 1;
  var qty = <int>[];
  var oneSec;
  var dress = [
    'Long Shirt Style',
    'Gray Tunic dress',
    'Dubai Style Abaya',
    'chudi',
    'chudi',
    'chudi'
  ];
  var image = [
    'assets/images/dress1.jpg',
    'assets/images/dress2.jpg',
    'assets/images/dress3.jpg',
    'assets/images/03.png',
    'assets/images/dress3.jpg',
    'assets/images/03.png',
  ];
  List numberOfItems = <int>[];
  AddToCartcontroller addToCartcontroller = Get.put(AddToCartcontroller());

  @override
  void initState() {
    super.initState();
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
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.add_shopping_cart_rounded,
                  color: screenbackground,
                  size: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.notifications,
                  color: screenbackground,
                  size: 20,
                ),
              ),
            ],
            title: Text(
              'MY CART',
              style: loginbuttonstyle,
            )),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: dress.length,
                  itemBuilder: ((context, index) {
                    for (int i = 0; i < dress.length; i++) {
                      qty.add(0);
                    }
                    return Slidable(
                      key: UniqueKey(),
                      endActionPane: ActionPane(
                        dismissible: DismissiblePane(onDismissed: () {
                          dress.removeAt(index);
                          setState(() {
                            Fluttertoast.showToast(msg: 'Deleted Successfully');
                          });
                        }),
                        motion: const DrawerMotion(),
                        children: [
                          SlidableAction(
                            autoClose: true,
                            flex: 1,
                            onPressed: (value) {
                              dress.removeAt(index);
                              setState(() {});
                            },
                            backgroundColor: appcolor,
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        height: 20.0.hp,
                        child: Card(
                            elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 28),
                              child: Row(children: [
                                Container(
                                  height: 15.0.hp,
                                  width: 25.0.wp,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            image[index],
                                          ))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          dress[index].toString(),
                                          style: listStyle,
                                        ),
                                        Text(
                                          'Shirt Wool dress',
                                          style: product,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            FittedBox(
                                              fit: BoxFit.cover,
                                              child: Text(
                                                '\$1,099',
                                                style: productpriceblue,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 2.0.wp,
                                            ),
                                            FittedBox(
                                              fit: BoxFit.cover,
                                              child: Text(
                                                '\$1,099',
                                                style: productpricestrike,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 3.0.hp,
                                          width: 50.0.wp,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 5,
                                              itemBuilder: ((context, value) {
                                                return Icon(
                                                  Icons.star,
                                                  size: 16,
                                                  color: amber,
                                                );
                                              })),
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: (() {
                                                setState(() {
                                                  qty[index] = qty[index] - 1;
                                                });
                                              }),
                                              child: Container(
                                                height: 3.0.hp,
                                                width: 7.0.wp,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: appcolor,
                                                ),
                                                child: Icon(
                                                  Icons.remove,
                                                  size: 16,
                                                  color: screenbackground,
                                                ),
                                              ),
                                            ),
                                            Container(
                                                height: 4.0.hp,
                                                width: 8.0.wp,
                                                decoration: BoxDecoration(),
                                                child: Center(
                                                    child: qty[index] == 0
                                                        ? Text('1')
                                                        : Text(qty[index]
                                                            .toString()))),
                                            InkWell(
                                              onTap: (() {
                                                setState(() {
                                                  qty[index] = qty[index] + 1;
                                                });
                                              }),
                                              child: Container(
                                                height: 3.0.hp,
                                                width: 7.0.wp,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: appcolor,
                                                ),
                                                child: Icon(
                                                  Icons.add,
                                                  color: screenbackground,
                                                  size: 16,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ]),
                                )
                              ]),
                            )),
                      ),
                    );
                  })),
            ),
            // TotalScreenaddtocart(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 8.0.hp,
          width: 100.0.wp,
          color: screenbackground,
          child: ListTile(
            title: Text(
              '\u{20B9}171',
              style: subtitleStyleappcolor,
            ),
            subtitle: Text(
              '\u{20B9}1299',
              style: cartstrike,
            ),
            trailing: InkWell(
              onTap: (() {
                Get.to((DeliveryAddressScreen()));
              }),
              child: Container(
                height: 5.0.hp,
                width: 45.0.wp,
                color: Colors.orange,
                child: Center(
                  child: Text(
                    'Continue',
                    style: toptitleStyle,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
