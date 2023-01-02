import 'package:customermodule/src/view/explore/myorder/rating_screen.dart';
import 'package:customermodule/utils/common_function/row_customwidget.dart';

import '../../../../all_packages.dart';
import '../../product/order_tracking.dart';
import 'add_review.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  bool? isButtonclicked = true;
  var index;
  _showAlertDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // <-- SEE HERE
          title: const Text('Cancel booking'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Are you sure want to cancel booking?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: appcolor,
        title: Text(
          'Order details',
          style: apptitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 10.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28.0,
                right: 28,
                top: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowCustomWidgetappcolor(
                    rowtext1: 'Sub OrderId:65689654755',
                    rowtext2: 'copy_id',
                  ),
                  Row(
                    children: [
                      Text(
                        'Payment mode',
                        style: formhintstylesearch,
                      ),
                      SizedBox(
                        width: 2.0.wp,
                      ),
                      Text(
                        'online',
                        style: orderdetails,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 2.0.hp,
          ),
          Container(
            height: 7.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28.0,
                right: 28,
                top: 10,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.headphones,
                    color: appcolor,
                  ),
                  SizedBox(
                    width: 2.0.wp,
                  ),
                  Text(
                    'Help Center',
                    style: orderdetails,
                  ),
                  SizedBox(
                    width: 30.0.wp,
                  ),
                  Container(
                    height: 3.0.hp,
                    width: 12.0.wp,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 165, 200, 229),
                    ),
                    child: Center(
                      child: Text(
                        'new',
                        style: orderdetails,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0.wp,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: appcolor,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            height: 16.0.hp,
            width: 100.0.wp,
            color: screenbackground,
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
                          child: Text('Dipani Fashion women Embroided kurti',
                              maxLines: 2,
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
              ],
            ),
          ),
          SizedBox(
            height: 2.0.hp,
          ),
          Container(
            height: 12.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 28.0, right: 28, top: 10),
                  child: Text(
                    'Rate Your Experience',
                    style: subtitleStyle,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 28),
                      child: Ratings(),
                    ),
                    InkWell(
                      onTap: (() {
                        Get.to(AddReview());
                      }),
                      child: Container(
                        height: 4.0.hp,
                        width: 20.0.wp,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: toptitlecolor)),
                        child: Center(
                          child: Text(
                            'Add Review',
                            style: orderdetails,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            height: 27.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: OrderTrackingUi(),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            height: 15.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowCustomWidgetappcolor(
                    rowtext1: 'Store Name:',
                    rowtext2: 'Cshop',
                  ),
                  RowCustomWidgetappcolor(
                    rowtext1: 'OTP:',
                    rowtext2: '646589',
                  ),
                  RowCustomWidgetappcolor(
                    rowtext1: 'Courier Agency:',
                    rowtext2: 'Delivery',
                  ),
                  RowCustomWidgetappcolor(
                    rowtext1: 'Tracking ID:',
                    rowtext2: '737325856',
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            height: 12.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Details',
                    style: toptitleStyle,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'order Total',
                        style: subtitleStyle,
                      ),
                      Text(
                        '0',
                        style: toptitleStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            height: 20.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28, top: 10),
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
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            height: 7.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28, top: 10),
              child: RowCustomWidgetappcolor(
                rowtext1: 'Supplier',
                rowtext2: 'Fehman Garments',
              ),
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Container(
            height: 7.0.hp,
            width: 100.0.wp,
            color: screenbackground,
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, right: 28),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RowCustomWidgetappcolor(
                    rowtext1: 'Sender Name',
                    rowtext2: 'Kowsalya Kalyan',
                  ),
                  RowCustomWidgetappcolor(
                    rowtext1: 'Sender Number',
                    rowtext2: '7010644326',
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
