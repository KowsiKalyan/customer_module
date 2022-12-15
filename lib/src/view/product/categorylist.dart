import 'package:customermodule/utils/common_function/customwidgets.dart';

import '../../../all_packages.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  // ignore: prefer_final_fields
  List<IconData> _icons = [
// The underscore declares a variable as private in dart.
    FontAwesomeIcons.mobile,
    FontAwesomeIcons.shirt,
    FontAwesomeIcons.shrimp,
    FontAwesomeIcons.shirt,
    FontAwesomeIcons.shirt,
    FontAwesomeIcons.shirt,
    FontAwesomeIcons.shirt,
    FontAwesomeIcons.shirt,
    FontAwesomeIcons.shirt,
    FontAwesomeIcons.shirt,
  ];
  var name = [
    'Mobiles',
    'Fashion',
    'Beauty',
    'Deals',
    'Movies',
    'Furniture',
    'Mobiles',
    'Fashion',
    'Beauty',
    'Deals',
  ];
  var image = [
    'assets/images/mobile.jpg',
    'assets/images/fashion.jpg',
    'assets/images/beauty.jpg',
    'assets/images/deals.jpg',
    'assets/images/movie.jpg',
    'assets/images/furniture.jpg',
    'assets/images/mobile.jpg',
    'assets/images/fashion.jpg',
    'assets/images/beauty.jpg',
    'assets/images/deals.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 9.00.hp,
            width: 200.00.wp,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 6.00.hp,
                        width: 9.00.hp,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: appcolor),
                        child: InkWell(
                            onTap: (() {
                              Get.to(Productsubcategory(
                                index: index.toString(),
                                text: name[index],
                              ));
                            }),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage(image[index].toString()),
                            )),
                      ),
                      Text(
                        name[index],
                        style: notificationsubtitleappcolor,
                      )
                    ],
                  );
                })),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Container(
              height: 13.0.hp,
              width: 100.0.wp,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/banner.jpg',
                      )),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          CustomWidgets(
            titletext: 'Best deals of Womens Fashions',
            offer: 'Save more then 20%',
            showmoretext: 'show more',
          ),
          Divider(
            thickness: 2,
          ),
          const ProductCategoryList(),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10),
            child: Container(
              height: 13.0.hp,
              width: 100.0.wp,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/lapbanner.jpg',
                      )),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          CustomWidgets(
            titletext: 'Best deals of Electronics',
            offer: 'Save more then 20%',
            showmoretext: 'show more',
          ),
          Divider(
            thickness: 2,
          ),
          const ElectronicsCategoryList(),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10),
            child: Container(
              height: 13.0.hp,
              width: 100.0.wp,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/tshirtbanner.jpg',
                      )),
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          CustomWidgets(
            titletext: 'Best Fashion deals for men ',
            offer: 'Save more then 20%',
            showmoretext: 'show more',
          ),
          Divider(
            thickness: 2,
          ),
          TshirtCatagories(),
        ],
      ),
    );
  }
}
