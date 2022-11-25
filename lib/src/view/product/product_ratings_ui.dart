import 'package:customermodule/all_packages.dart';

class ProductRatings extends StatefulWidget {
  const ProductRatings({super.key});

  @override
  State<ProductRatings> createState() => _ProductRatingsState();
}

class _ProductRatingsState extends State<ProductRatings> {
  int _currentRating = 0;
  Widget _buildRatingProductRatings(int index) {
    if (index < _currentRating) {
      return Icon(Icons.star, color: appcolor);
    } else {
      return Icon(Icons.star_border_outlined);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.00.hp,
      width: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: ((context, index) {
            return GestureDetector(
                onTap: (() {
                  setState(() {
                    _currentRating = index + 1;
                    Fluttertoast.showToast(msg: 'Thanks for ratings!');
                    print(_currentRating.toString());
                  });
                }),
                child: _buildRatingProductRatings(index));
          })),
    );
  }
}
