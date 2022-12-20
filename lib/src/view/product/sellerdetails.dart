import '../../../all_packages.dart';

class SellerDetailsScreen extends StatefulWidget {
  const SellerDetailsScreen({super.key});

  @override
  State<SellerDetailsScreen> createState() => _SellerDetailsScreenState();
}

class _SellerDetailsScreenState extends State<SellerDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Divider(
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'seller details ',
              style: subtitleStyle,
            ),
            Text(
              'Cshop Store ',
              style: subtitleStyleappcolor,
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: appcolor,
              size: 15,
            )
          ],
        ),
        Divider(
          thickness: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 10.0.hp,
              width: 20.0.wp,
              color: Color.fromARGB(255, 238, 238, 238),
              child: Icon(
                Icons.cancel_presentation_outlined,
                color: Colors.red,
              ),
            ),
            Container(
              height: 10.0.hp,
              width: 20.0.wp,
              color: Color.fromARGB(255, 238, 238, 238),
              child: Icon(
                Icons.keyboard_return_outlined,
                color: Colors.red,
              ),
            )
          ],
        ),
        SizedBox(
          height: 1.0.hp,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'No Cancellable',
              style: notificationsubtitle,
            ),
            Text(
              'No returnable',
              style: notificationsubtitle,
            ),
          ],
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
