import '../../../../all_packages.dart';

class ShippedOrder extends StatefulWidget {
  //const ShippedOrder({super.key});

  @override
  State<ShippedOrder> createState() => _ShippedOrderState();
}

class _ShippedOrderState extends State<ShippedOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 28.0.hp,
                width: 100.0.wp,
                color: screenbackground,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                      child: Text(
                        '26th Nov',
                        style: orderdetails,
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order Id:697554785554',
                            style: orderdetails,
                          ),
                          Text(
                            'Sold to Kowsalya Kalyan',
                            style: orderdetails,
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Text(
                        'Supplier:DIPANI',
                        style: orderdetails,
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Column(
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
                                      'Dipani Fashion women Embroided Rayon anarkali',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: false,
                                      style: subtitleStyleappcolor),
                                ),
                                SizedBox(
                                  height: 1.0.hp,
                                ),
                                Text(
                                  'Delivered on 11 jan 2023',
                                  style: orderdetails,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 20,
                                color: appcolor,
                              ),
                            )
                          ],
                        ),
                        // Divider(
                        //   thickness: 1,
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 20.0, right: 20),
                        //   child: Text(
                        //     'Rate Your Experience',
                        //     style: toptitleStyle,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 20.0, right: 20),
                        //   child: Ratings(),
                        // )
                      ],
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
