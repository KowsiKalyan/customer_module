import 'dart:ffi';

import 'package:customermodule/src/view/customer_support/chatpage.dart';

import '../../../all_packages.dart';

class CustomerHistoryPage extends StatefulWidget {
  const CustomerHistoryPage({super.key});

  @override
  State<CustomerHistoryPage> createState() => _CustomerHistoryPageState();
}

class _CustomerHistoryPageState extends State<CustomerHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appcolor,
        title: Text(
          'Customer Support',
          style: apptitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, right: 20),
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: ((context, index) {
              return Card(
                child: Container(
                  height: 25.0.hp,
                  color: screenbackground,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomerCusomized(
                            typekey: 'Type',
                            typevalue: 'Product not displaying',
                          ),
                          Container(
                            height: 3.0.hp,
                            width: 25.0.wp,
                            decoration: BoxDecoration(
                                color: index % 2 == 0 ? orange : Colors.green,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              index % 2 == 0 ? 'Resolved' : 'Pending',
                              style: buttontext,
                            )),
                          )
                        ],
                      ),
                      CustomerCusomized(
                        typekey: 'subject',
                        typevalue: 'defective product',
                      ),
                      CustomerCusomized(
                        typekey: 'Description',
                        typevalue: 'Product is defective ',
                      ),
                      CustomerCusomized(
                        typekey: 'Type',
                        typevalue: 'Product not displaying',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 28.0, top: 20),
                        child: Row(
                          children: [
                            Container(
                                height: 4.0.hp,
                                width: 15.0.wp,
                                decoration: BoxDecoration(
                                    color: buttoncolor,
                                    borderRadius: BorderRadius.circular(4)),
                                child: Center(
                                  child: Text(
                                    'Edit',
                                    style: buttonprice,
                                  ),
                                )),
                            SizedBox(
                              width: 4.0.wp,
                            ),
                            InkWell(
                              onTap: (() {
                                Get.to(ChatPage());
                              }),
                              child: Container(
                                  height: 4.0.hp,
                                  width: 15.0.wp,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Center(
                                    child: Text(
                                      'chat',
                                      style: orderdetails,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            })),
      ),
    );
  }
}

class CustomerCusomized extends StatelessWidget {
  CustomerCusomized({super.key, this.typekey, this.typevalue});
  String? typekey;
  String? typevalue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, top: 10),
      child: Container(
        child: Row(
          children: [
            Text(
              '${typekey}:',
              style: productprice,
            ),
            SizedBox(
              width: 2.0.wp,
            ),
            Text(
              '${typevalue}',
              maxLines: 3,
              style: orderdetails,
            )
          ],
        ),
      ),
    );
  }
}
