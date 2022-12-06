import 'package:customermodule/all_packages.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TotalScreenaddtocart extends StatefulWidget {
  const TotalScreenaddtocart({super.key});

  @override
  State<TotalScreenaddtocart> createState() => _TotalScreenaddtocartState();
}

class _TotalScreenaddtocartState extends State<TotalScreenaddtocart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Big Total',
                style: totalstyle,
              ),
              Text(
                '\u{20B9}141',
                style: totalstyle,
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
                'Bag Discount',
                style: totalstyle,
              ),
              Text(
                '-\u{20B9}30',
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
                'Sub Total',
                style: totalstyle,
              ),
              Text(
                '\u{20B9}141',
                style: totalstyle,
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
                style: totalstyle,
              ),
              Text(
                '\u{20B9}0',
                style: totalstyle,
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
                'Delivery',
                style: totalstyle,
              ),
              Text(
                'Free',
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
                'Total Payable',
                style: totalstyle,
              ),
              Text(
                '\u{20B9}111',
                style: totalstyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
