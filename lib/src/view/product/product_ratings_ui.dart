import 'dart:developer';

import 'package:customermodule/all_packages.dart';

class ProductRatings extends StatefulWidget {
  const ProductRatings({super.key});

  @override
  State<ProductRatings> createState() => _ProductRatingsState();
}

class _ProductRatingsState extends State<ProductRatings> {
  int currentindex = 0;
  int _currentRating = 0;
  // Widget _buildRatingProductRatings(int index) {
  //   if (index < _currentRating) {
  //     return const Icon(Icons.star, color: appcolor);
  //   } else {
  //     return const Icon(Icons.star_border_outlined);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 2.00.hp,
        width: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: ((context, index) {
              return index < 3
                  ? Icon(
                      Icons.star,
                      color: orange,
                    )
                  : Icon(
                      Icons.star_border_outlined,
                      color: orange,
                    );

              //   return GestureDetector(
              //       onTap: (() {
              //         setState(() {
              //           _currentRating = index + 1;
              //           Fluttertoast.showToast(msg: 'Thanks for ratings!');
              //           print(_currentRating.toString());
              //         });
              //       }),
              //       child: _buildRatingProductRatings(index));
              // })),
            })));
  }
}
