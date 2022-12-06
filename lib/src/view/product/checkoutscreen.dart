import '../../../all_packages.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
                  'CHECKOUT',
                  style: loginbuttonstyle,
                ),
                const Icon(
                  Icons.notifications,
                  color: screenbackground,
                  size: 20,
                ),
              ]),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Deliver Address',
                  style: toptitleStyleappcolor,
                ),
                Text(
                  'Change',
                  style: subtitleStyleappcolor,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.0.hp,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  color: appcolor,
                  size: 30,
                ),
                Container(
                  color: Colors.white,
                  height: 6.00.hp, width: 80.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    style: forminputstyle,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'user name',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: formhintstyle,
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: appcolor,
                  size: 30,
                ),
                Container(
                  color: Colors.white,
                  height: 6.00.hp, width: 80.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    style: forminputstyle,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'address',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: formhintstyle,
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.phone,
                  color: appcolor,
                  size: 30,
                ),
                Container(
                  color: Colors.white,
                  height: 6.00.hp, width: 80.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    style: forminputstyle,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'contactnumber',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: formhintstyle,
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.email,
                  color: appcolor,
                  size: 30,
                ),
                Container(
                  color: Colors.white,
                  height: 6.00.hp, width: 80.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    style: forminputstyle,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'e-mail',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: formhintstyle,
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 10),
              height: 20.0.hp,
              child: Card(
                  elevation: 1,
                  child: Row(children: [
                    Radio(
                        value: "radio value",
                        groupValue: "group value",
                        onChanged: (value) {
                          print(value); //selected value
                        }),
                    Container(
                      height: 15.0.hp,
                      width: 30.0.wp,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/01.png'))),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Grey tunic dress',
                                style: toptitleStyle,
                              ),
                              const Text('Shirt Wool dress'),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    itemBuilder: ((context, index) {
                                      return const Icon(
                                        Icons.star,
                                        size: 16,
                                        color: amber,
                                      );
                                    })),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: (() {}),
                                    child: Container(
                                      height: 3.0.hp,
                                      width: 7.0.wp,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: appcolor,
                                      ),
                                      child: const Icon(
                                        Icons.add,
                                        color: screenbackground,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 4.0.hp,
                                    width: 8.0.wp,
                                    decoration: const BoxDecoration(),
                                    child: const Center(child: Text('1')),
                                  ),
                                  InkWell(
                                    onTap: (() {}),
                                    child: Container(
                                      height: 3.0.hp,
                                      width: 7.0.wp,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: appcolor,
                                      ),
                                      child: const Icon(
                                        Icons.remove,
                                        size: 16,
                                        color: screenbackground,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ]))
                  ]))),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 12.0.hp,
              color: screenbackground,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'subtotal',
                          style: totalstyle,
                        ),
                        Text(
                          '\u{20B9}47.00',
                          style: totalstyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'shipping(Est. Arrival:27-30 Dec)',
                          style: totalstyle,
                        ),
                        Text(
                          '\u{20B9}00.00',
                          style: totalstyle,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Savings',
                          style: totalstyle,
                        ),
                        Text(
                          '\u{20B9}47.00',
                          style: totalstyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.0.hp,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.white,
                  height: 5.00.hp, width: 65.00.wp,
                  // padding: const EdgeInsets.only(
                  //   left: 20,
                  //   right: 20,
                  // ),
                  child: TextFormField(
                    style: forminputstyle,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: appcolor, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                              color: const Color(0xffC6C6C6).withOpacity(0.5),
                              width: 1),
                        ),
                        fillColor: const Color(0xffC6C6C6),
                        hintText: 'Enter coupon/voucher code',
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintStyle: formhintstyle,
                        border: const OutlineInputBorder(
                          gapPadding: 4,
                        )),
                  ),
                ),
                Container(
                  height: 5.0.hp,
                  width: 23.0.wp,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Apply',
                      style: toptitleStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 3.0.hp,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total:\u{20B9}47',
                      style: toptitleStyle,
                    ),
                    Text('vat included,where applicable', style: formhintstyle),
                  ],
                ),
                InkWell(
                  onTap: (() {
                    Get.to(PaymentScreen());
                  }),
                  child: Container(
                    height: 6.0.hp,
                    width: 50.0.wp,
                    decoration: BoxDecoration(
                        color: appcolor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Process to Checkout',
                        style: placeorder,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ])));
  }
}
