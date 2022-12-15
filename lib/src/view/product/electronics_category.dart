import '../../../all_packages.dart';

class ElectronicsCategoryList extends StatefulWidget {
  const ElectronicsCategoryList({Key? key}) : super(key: key);

  @override
  State<ElectronicsCategoryList> createState() =>
      _ElectronicsCategoryListState();
}

class _ElectronicsCategoryListState extends State<ElectronicsCategoryList> {
  var image = [
    'assets/images/laptop1.jpg',
    'assets/images/laptop2.jpg',
    'assets/images/laptop3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: GridView.builder(
            primary: false,
            itemCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  // Get.to(const ProductDetailsScreen());
                },
                child: Container(
                  height: 18.0.hp,
                  width: 50.0.wp,
                  child: Card(
                    elevation: 1,
                    child: Column(
                      children: [
                        Container(
                          height: 12.00.hp,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(image[index]))),
                        ),
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
                                  'DMuse',
                                  style: subtitleStyle,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.cover,
                                    child: Text(
                                      '\$1,099',
                                      style: dashboardproductprice,
                                    ),
                                  ),
                                  FittedBox(
                                    fit: BoxFit.cover,
                                    child: Text(
                                      '\$1,099',
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
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 9.0,
                childAspectRatio: 2.50 / 3)));
  }
}
