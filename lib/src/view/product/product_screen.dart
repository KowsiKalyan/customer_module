import '../../../all_packages.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: 12.00.hp,
            width: 200.00.wp,
            padding: const EdgeInsets.all(5),
            child: Card(
              elevation: 1,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
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
                                child: Icon(
                                  _icons[index],
                                  size: 20,
                                  color: screenbackground,
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
