import 'package:customermodule/all_packages.dart';

class ProductAboutUi extends StatefulWidget {
  const ProductAboutUi({super.key});

  @override
  State<ProductAboutUi> createState() => _ProductAboutUiState();
}

class _ProductAboutUiState extends State<ProductAboutUi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: listtitle,
        ),
        SizedBox(
          height: 1.00.hp,
        ),
        Text(
          '''T-shirts have become one of the most common yet stylish choices of clothing for teenagers. As tees are simple to wear, comfortable, and easy to wash...
        ''',
          style: subtitleStyle,
          textAlign: TextAlign.justify,
        ),
        const Divider(),
        InkWell(
          onTap: () {
            Get.to(CouponcodeScreen());
          },
          child: Container(
            height: 5.0.hp,
            width: 100.0.wp,
            padding: EdgeInsets.only(top: 1.0.hp),
            //  color: screenbackground,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All offers & Coupens',
                  style: subtitleStyle,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: appcolor,
                  size: 15,
                )
              ],
            ),
          ),
        ),
        const Divider(),
        Text(
          'Product Details',
          style: listtitle,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28.0, top: 10),
          child: Table(
            children: const [
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Pattern',
                    style: TextStyle(color: appcolor),
                  ),
                )),
                TableCell(child: Text('Printed')),
              ]),
              TableRow(children: [
                TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Type', style: TextStyle(color: appcolor)),
                  ),
                ),
                TableCell(child: Text('Straight')),
              ]),
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Fabric', style: TextStyle(color: appcolor)),
                )),
                TableCell(child: Text('Pure Cotton')),
              ]),
              TableRow(children: [
                TableCell(
                    child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Colors', style: TextStyle(color: appcolor)),
                )),
                TableCell(child: Text('grey')),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
