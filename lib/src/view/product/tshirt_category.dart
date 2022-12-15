import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import '../../../all_packages.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TshirtCatagories extends StatelessWidget {
  TshirtCatagories({Key? key}) : super(key: key);

  var images = [
    'assets/images/laptop1.jpg',
    'assets/images/laptop2.jpg',
    'assets/images/laptop3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 4,
          child: Tile(
            index: 0,
            image: 'assets/images/ment.jpg',
            text: 'Dmuse',
            price1: '\$1,099',
            price2: '\$2,099',
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: Tile(
            index: 1,
            image: 'assets/images/ment1.jpg',
            text: 'Dmuse',
            price1: '\$1,099',
            price2: '\$2,099',
          ),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: Tile(
            index: 2,
            image: 'assets/images/tshirt1.jpg',
            text: 'Dmuse',
            price1: '\$1,099',
            price2: '\$2,099',
          ),
        ),
      ],
    );
  }
}

class Tile extends StatelessWidget {
  Tile(
      {super.key, this.index, this.image, this.text, this.price1, this.price2});
  int? index;
  String? image;
  String? text;
  String? price1;
  String? price2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: screenbackground,
      child: Column(
        children: [
          index == 0
              ? Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image.toString())),
                      borderRadius: BorderRadius.circular(10)),
                  height: 40.0.hp,
                )
              : index == 1 || index == 2
                  ? Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(image.toString())),
                          borderRadius: BorderRadius.circular(10)),
                      height: 17.5.hp,
                    )
                  : Container(),
          Container(
            height: 5.0.hp,
            decoration: BoxDecoration(
                color: screenbackground,
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    text!,
                    style: subtitleStyle,
                    textAlign: TextAlign.start,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        price1!,
                        style: dashboardproductprice,
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        price2!,
                        style: dashboardpricestrike,
                      ),
                    ),
                    // Container(
                    //   height: MediaQuery.of(context).size.height * 0.03,
                    //   width: 10.00.wp,
                    //   decoration: BoxDecoration(
                    //       color: appcolor,
                    //       borderRadius: BorderRadius.circular(2)),
                    //   child: Center(
                    //     child: Text(
                    //       '40%',
                    //       style: buttonprice,
                    //       textAlign: TextAlign.center,
                    //     ),
                    //   ),
                    // )
                    Text(
                      index!.toString(),
                      style: TextStyle(fontSize: 2),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
