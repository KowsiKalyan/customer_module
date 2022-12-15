import 'package:customermodule/all_packages.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TotalScreenaddtocart extends StatefulWidget {
  const TotalScreenaddtocart({super.key});

  @override
  State<TotalScreenaddtocart> createState() => _TotalScreenaddtocartState();
}

class _TotalScreenaddtocartState extends State<TotalScreenaddtocart> {
  var price = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Text(
            'Price Details',
            style: toptitleStyle,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price (${price} item)',
                style: subtitleStyle,
              ),
              Text(
                '\u{20B9}1299',
                style: subtitleStyle,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dsicount',
                style: subtitleStyle,
              ),
              Text(
                '-\u{20B9}1020',
                style: totalstyledis,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Coupon Discount',
                style: subtitleStyle,
              ),
              Text(
                '\u{20B9}100',
                style: totalstyledis,
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery Charges',
                style: subtitleStyle,
              ),
              Text(
                'Free Delivery',
                style: totalstyledis,
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: totalstyle,
              ),
              Text(
                '\u{20B9}171',
                style: totalstyle,
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
