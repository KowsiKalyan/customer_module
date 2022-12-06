import 'dart:developer';

import 'package:customermodule/all_packages.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AddtocartUi extends StatefulWidget {
  const AddtocartUi({super.key});

  @override
  State<AddtocartUi> createState() => _AddtocartUiState();
}

class _AddtocartUiState extends State<AddtocartUi> {
  TextEditingController quantity = TextEditingController();
  int num = 0;
  var qty = <int>[];
  var dress = [
    'Long Shirt Style',
    'Gray Tunic dress',
    'Dubai Style Abaya',
    'chudi'
  ];
  var image = [
    'assets/images/01.png',
    'assets/images/02.png',
    'assets/images/03.png',
    'assets/images/03.png',
  ];
  List numberOfItems = <int>[];
  var increment;
  @override
  void initState() {
    quantity.text = '';
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appcolor,
          toolbarHeight: 10.0.hp,
          automaticallyImplyLeading: false,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (() {
                    Get.back();
                  }),
                  child: const Icon(
                    Icons.arrow_back,
                    color: screenbackground,
                  ),
                ),
                Text(
                  'MY CART',
                  style: loginbuttonstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.add_shopping_cart_rounded,
                      color: screenbackground,
                      size: 20,
                    ),
                    SizedBox(
                      width: 2.00.wp,
                    ),
                    const Icon(
                      Icons.notifications,
                      color: screenbackground,
                      size: 20,
                    ),
                  ],
                )
              ]),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 60.0.hp,
                  width: 100.00.wp,
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
                                Fluttertoast.showToast(
                                    msg: 'Deleted Successfully');
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
                                backgroundColor: appcolor1,
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                image[index],
                                              ))),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: 5,
                                                  itemBuilder:
                                                      ((context, value) {
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
                                                      qty[index] =
                                                          qty[index] - 1;
                                                    });
                                                  }),
                                                  child: Container(
                                                    height: 3.0.hp,
                                                    width: 7.0.wp,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                                                      child: Text(qty[index]
                                                          .toString())),
                                                ),
                                                InkWell(
                                                  onTap: (() {
                                                    setState(() {
                                                      qty[index] =
                                                          qty[index] + 1;
                                                    });
                                                  }),
                                                  child: Container(
                                                    height: 3.0.hp,
                                                    width: 7.0.wp,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
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
                      }))),
              TotalScreenaddtocart(),
              SizedBox(
                height: 1.0.hp,
              ),
              InkWell(
                onTap: (() {
                  Get.to(CheckoutScreen());
                }),
                child: Container(
                  height: 6.0.hp,
                  width: 50.0.wp,
                  decoration: BoxDecoration(
                      color: appcolor, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Place Order',
                      style: placeorder,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
