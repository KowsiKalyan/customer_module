import 'package:customermodule/all_packages.dart';

class Ratings extends StatefulWidget {
  const Ratings({super.key});

  @override
  State<Ratings> createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  int currentindex = 0;
  int _currentRating = 0;
  Widget _buildRatingRatings(int index) {
    if (index < _currentRating) {
      return const Icon(
        Icons.star,
        color: appcolor,
        size: 25,
      );
    } else {
      return const Icon(
        Icons.star_border_outlined,
        size: 25,
        color: formhintcolor,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                child: _buildRatingRatings(index));
          })),
    );
  }
}
