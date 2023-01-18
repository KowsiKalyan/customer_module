import '../../../all_packages.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var image = [
    'assets/images/category/earpods.jpg',
    'assets/images/category/mensfashion.jpg',
    'assets/images/category/womensfashion.jpg',
    'assets/images/category/walldecor.jpg',
    'assets/images/mobile1.jpg',
    'assets/images/category/watch.jpg',
    'assets/images/category/outdoor.jpg',
    'assets/images/category/decoration.jpg',
    'assets/images/fashion.jpg',
    'assets/images/category/sofa.jpg',
    'assets/images/laptop1.jpg',
    'assets/images/category/chair.jpg',
    'assets/images/category/games.jpg',
    'assets/images/category/stands.jpg',
    'assets/images/category/homeneeds.jpg',
    'assets/images/category/crafts.jpg',
    'assets/images/category/charger.jpg',
    'assets/images/category/mask.jpg',
    'assets/images/category/mobilecover.png',
    'assets/images/category/veg.jpg',
    'assets/images/category/glass.jpg',
    'assets/images/furniture.jpg',
    'assets/images/category/pharma.jpg',
    'assets/images/category/footwear.jpg',
    'assets/images/category/drinks.jpg',
    'assets/images/category/babe.jpg',
    'assets/images/category/couche.jpg',
    'assets/images/category/crafts.jpg',
  ];
  var productname = [
    'earpods',
    'mens&\nfashion',
    'womens&\nfashion',
    'wall decor',
    'mobile',
    'watch',
    'outdoor&\nGarden',
    'decor',
    'fashion',
    'sofa',
    'computer',
    'chair',
    'games',
    'stands',
    'homeneeds',
    'crafts',
    'charger',
    'mask',
    'mobilecover',
    'vegetables',
    'eye wear',
    'funiture',
    'pharmacy',
    'footwear',
    'drinks',
    'baby care',
    'couche',
    'crafts&gifts'
  ];
  @override
  void initState() {
    print(image.length.toString());
    super.initState();
  }

  final ScrollController _scrollBottomBarController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'All Categories',
            style: apptitle,
          ),
          backgroundColor: appcolor,
        ),
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
                                    contentPadding:
                                        const EdgeInsets.only(left: 10),
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
                  child: GridView.builder(
                      primary: false,
                      itemCount: image.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(Productsubcategory(
                              index: index.toString(),
                              text: '',
                            ));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 7.0.hp,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(image[index])),
                                    shape: BoxShape.circle,
                                    color: appcolor),
                              ),
                              SizedBox(
                                height: 1.0.hp,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      productname[index],
                                      style: orderdetails,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              mainAxisSpacing: 1.0,
                              childAspectRatio: 2.5 / 3))),
            ]));
  }
}
        //  backgroundColor: bgcolor,
//         body: SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: GridView.builder(
//                 primary: false,
//                 itemCount: image.length,
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemBuilder: (context, index) {
//                   return InkWell(
//                     onTap: () {
//                       Get.to(Productsubcategory(
//                         index: index.toString(),
//                         text: '',
//                       ));
//                     },
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           top: 2.0.hp, left: 1.0.wp, right: 1.0.wp),
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 7.0.hp,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     fit: BoxFit.cover,
//                                     image: AssetImage(image[index])),
//                                 shape: BoxShape.circle,
//                                 color: appcolor),
//                           ),
//                           Container(
//                             width: 32.0.wp,
//                             child: Center(
//                               child: Text(
//                                 productname[index],
//                                 style: orderdetails,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 4,
//                     mainAxisSpacing: 1.0,
//                     childAspectRatio: 2.5 / 3))),
//       ),
//     );
//   }
// }
