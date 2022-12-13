import 'package:customermodule/all_packages.dart';

import '../homescreen/homescreen.dart';

class Productsubcategory extends StatefulWidget {
  const Productsubcategory(
      {super.key, required this.index, required this.text});
  final String index;
  final String text;

  @override
  State<Productsubcategory> createState() => _ProductsubcategoryState();
}

class _ProductsubcategoryState extends State<Productsubcategory> {
  final ScrollController _scrollBottomBarController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 10,
          backgroundColor: appcolor,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Icon(
                Icons.search,
                color: screenbackground,
                size: 25,
              ),
            ),
          ],
          title: Text(
            'WOMEN \'s FASHION',
            style: loginbuttonstyle,
          )),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: _scrollBottomBarController,
        slivers: [
          SliverPersistentHeader(
            floating: false,
            pinned: true,
            delegate: SearchBarHeaderDelegates(),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              ProductSubcategorylist(),
              ProductSubcategorylist(),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Card(
                  child: Image.asset(
                    'assets/images/Offer.png',
                    height: 15.00.hp,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ]),
          )
        ],
      ),

      // Container(
      //   height: 7.00.hp,
      //   width: 85.00.wp,
      //   child: Card(
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Row(
      //           children: [
      //             Icon(
      //               Icons.arrow_upward,
      //               color: appcolor,
      //               size: 18,
      //             ),
      //             Icon(
      //               Icons.arrow_downward,
      //               color: appcolor,
      //               size: 18,
      //             ),
      //             Text(
      //               'SORT BY',
      //               style: sort,
      //             )
      //           ],
      //         ),
      //         VerticalDivider(
      //           width: 2,
      //           thickness: 2,
      //           endIndent: 10,
      //           indent: 10,
      //         ),
      //         Row(
      //           children: [
      //             Icon(
      //               Icons.arrow_upward,
      //               color: appcolor,
      //               size: 18,
      //             ),
      //             Icon(
      //               Icons.arrow_downward,
      //               color: appcolor,
      //               size: 18,
      //             ),
      //             Text(
      //               'REFINE ',
      //               style: sort,
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      // ProductSubcategorylist(),
      // Padding(
      //   padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      //   child: Card(
      //     child: Image.asset(
      //       'assets/images/Offer.png',
      //       height: 15.00.hp,
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),
    );
  }
}

class SearchBarHeaderDelegates extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: const EdgeInsets.all(5),
        color: screenbackground,
        child: GestureDetector(
          child: Card(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: appcolor,
                    size: 18,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: appcolor,
                    size: 18,
                  ),
                  Text(
                    'SORT BY',
                    style: sort,
                  )
                ],
              ),
              VerticalDivider(
                width: 2,
                thickness: 2,
                endIndent: 10,
                indent: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.arrow_upward,
                    color: appcolor,
                    size: 18,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: appcolor,
                    size: 18,
                  ),
                  Text(
                    'REFINE ',
                    style: sort,
                  )
                ],
              ),
            ],
          )),
          onTap: () async {},
        ),
      ),
    );
  }

  @override
  double get maxExtent => 75;

  @override
  double get minExtent => 75;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
