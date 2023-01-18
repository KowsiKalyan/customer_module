import 'package:customermodule/all_packages.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: appcolor,
          title: Text(
            'Contact Us',
            style: apptitle,
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Text(
              'Contact Us:',
              style: toptitleStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Text(
              'For any kind of queries related to products, orders or services feel to contact us on our official44 email address or phone numer as given below',
              style: orderdetails,
              textAlign: TextAlign.justify,
              maxLines: 8,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Text(
              'Areas we delivery :',
              style: subtitleStyleappcolor,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0, right: 20.0, top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ariyankuppam',
                    style: orderdetails,
                  ),
                  Text(
                    'Thavalakuppam',
                    style: orderdetails,
                  ),
                  Text(
                    'Saram',
                    style: orderdetails,
                  ),
                  Text(
                    'Lawspet',
                    style: orderdetails,
                  ),
                  Text(
                    'WhiteTown',
                    style: orderdetails,
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Text(
              'Delivery Timings :',
              style: subtitleStyleappcolor,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 40.0, right: 20.0, top: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8.00 AM to 10.30 AM',
                    style: orderdetails,
                  ),
                  Text(
                    '10.30 AM to 12.30 PM',
                    style: orderdetails,
                  ),
                  Text(
                    '4.00 PM to 07.00 PM',
                    style: orderdetails,
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Text(
              'Note: You can order for maximum 2 days advance. i,e today & tomorrow only',
              style: subtitleStyle,
            ),
          ),
        ],
      ),
    );
  }
}
