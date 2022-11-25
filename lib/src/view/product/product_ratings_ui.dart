import 'package:customermodule/all_packages.dart';

class ProductRatings extends StatefulWidget {
  const ProductRatings({super.key});

  @override
  State<ProductRatings> createState() => _ProductRatingsState();
}

class _ProductRatingsState extends State<ProductRatings> {
  var selectedindex = 0;
  var arraylist = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.00.hp,
      width: 60.00.wp,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: ((context, index) {
            return InkWell(
              onTap: (() {
                setState(() {
                  selectedindex = index;
                  print(selectedindex.toString());
                  // arraylist.addAll(selectedindex);
                });
              }),
              child: Icon(
                Icons.star,
                color: selectedindex == index ? appcolor : Colors.blue,
                size: 18,
              ),
            );
          })),
    );
  }
}
