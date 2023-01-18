import 'package:customermodule/all_packages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollBottomBarController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: bgcolor,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: _scrollBottomBarController,
        slivers: [
          SliverAppBar(
              floating: false,
              pinned: true,
              automaticallyImplyLeading: false,
              toolbarHeight: 8.0.hp,
              backgroundColor: Get.isDarkMode
                  ? Color.fromARGB(255, 46, 45, 45)
                  : screenbackground,
              titleSpacing: 0,
              title: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10),
                        height: 6.0.hp,
                        child: GestureDetector(
                          child: TextFormField(
                            style: subtitleStyle,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: appcolor,
                                ),
                                suffixIcon: Icon(
                                  Icons.mic,
                                  color: appcolor,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide:
                                      BorderSide(color: appcolor, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: BorderSide(
                                      color: formhintcolor, width: 1),
                                ),
                                fillColor: const Color(0xffC6C6C6),
                                hintText: 'Search your products',
                                contentPadding: const EdgeInsets.only(left: 10),
                                hintStyle: formhintstylesearch,
                                border: const OutlineInputBorder(
                                  gapPadding: 4,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ))),
          SliverToBoxAdapter(
            child: Column(children: [
              ImageSliderHome(),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: CategoryList(),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

// class SearchBarHeaderDelegate extends SliverPersistentHeaderDelegate {
//   @override
//   Widget build(
//     BuildContext context,
//     double shrinkOffset,
//     bool overlapsContent,
//   ) {
//     return Align(
//         alignment: Alignment.topCenter,
//         child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
//               height: 6.0.hp,
//               color: Get.isDarkMode ? Colors.black : screenbackground,
//               child: GestureDetector(
//                 child: TextFormField(
//                   style: subtitleStyle,
//                   decoration: InputDecoration(
//                       prefixIcon: Icon(
//                         Icons.search,
//                         color: appcolor,
//                       ),
//                       suffixIcon: Icon(
//                         Icons.mic,
//                         color: appcolor,
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5.0),
//                         borderSide: BorderSide(color: appcolor, width: 1),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5.0),
//                         borderSide: BorderSide(color: Colors.black45, width: 1),
//                       ),
//                       fillColor: const Color(0xffC6C6C6),
//                       hintText: 'Search your products',
//                       contentPadding: const EdgeInsets.only(left: 10),
//                       hintStyle: formhintstylesearch,
//                       border: const OutlineInputBorder(
//                         gapPadding: 4,
//                       )),
//                 ),
//               ),
//             ),
//           ],
//         ));
//   }

//   @override
//   double get maxExtent => 75;

//   @override
//   double get minExtent => 75;

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return true;
//   }
// }
