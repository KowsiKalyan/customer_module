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
        children: [
          Container(
            height: 10.00.hp,
            width: 200.00.wp,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: image.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 7.0),
                        child: Container(
                          height: 6.00.hp,
                          width: 8.00.hp,
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
                      ),
                      Text(
                        name[index],
                        style: notificationsubtitle,
                      )
                    ],
                  );
                })),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5.0),
            child: Card(
              child: Image.asset(
                'assets/images/Offer.png',
                height: 12.00.hp,
                fit: BoxFit.cover,
              ),
            ),
          ),
          ProductCategoryList()
        ],
      ),
    );
  }
}
