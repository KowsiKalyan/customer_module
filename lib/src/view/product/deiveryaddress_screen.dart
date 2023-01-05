import 'package:clay_containers/clay_containers.dart';

import '../../../all_packages.dart';
import 'create_delivery_address.dart';

class DeliveryAddressScreen extends StatefulWidget {
  const DeliveryAddressScreen({super.key});

  @override
  State<DeliveryAddressScreen> createState() => _DeliveryAddressScreenState();
}

class _DeliveryAddressScreenState extends State<DeliveryAddressScreen> {
  var selectedindex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: appcolor,
        title: Text(
          'Delivery Address',
          style: apptitle,
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
              child: Container(
                color: appcolor,
                child: Center(
                  child: ClayContainer(
                    color: screenbackground,
                    height: 20.0.hp,
                    width: 80.0.wp,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Kowsalya',
                              style: subtitleStyleappcolor,
                            ),
                            Stack(
                              children: [
                                InkWell(
                                  onTap: (() {
                                    setState(() {
                                      selectedindex = index;
                                    });
                                  }),
                                  child: Container(
                                    height: 2.0.hp,
                                    width: 5.0.wp,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: selectedindex == index
                                                ? Colors.green
                                                : toptitlecolor),
                                        // color: toptitlecolor,
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                selectedindex == index
                                    ? Positioned(
                                        top: 0,
                                        left: 0,
                                        right: 0,
                                        child: Icon(
                                          Icons.check,
                                          size: 18,
                                          color: selectedindex == index
                                              ? Colors.green
                                              : toptitlecolor,
                                        ),
                                      )
                                    : Container()
                              ],
                            )
                          ],
                        ),
                        Text(
                          '17/4 Sathukudal Road,Vriddhachalam',
                          style: orderdetails,
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
                        SizedBox(
                          height: 2.0.hp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: (() {
                                Get.to(CreateDeliveryAddress());
                              }),
                              child: Text(
                                'Edit',
                                style: toptitleStyleappcolor,
                              ),
                            ),
                            InkWell(
                              onTap: (() {
                                Get.to(PaymentScreen());
                              }),
                              child: Container(
                                height: 4.0.hp,
                                width: 50.0.wp,
                                decoration: BoxDecoration(
                                    color: buttoncolor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                    child: Text(
                                  'Delivery to this address',
                                  style: buttontext,
                                )),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          })),
      floatingActionButton: FloatingActionButton(
          backgroundColor: appcolor,
          onPressed: () {
            Get.to(CreateDeliveryAddress());
          },
          child: Icon(
            Icons.add,
            color: screenbackground,
          )),
    );
  }
}
