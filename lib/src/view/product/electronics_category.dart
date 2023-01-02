import '../../../all_packages.dart';

class ElectronicsCategoryList extends StatefulWidget {
  const ElectronicsCategoryList({super.key});

  @override
  State<ElectronicsCategoryList> createState() =>
      _ElectronicsCategoryListState();
}

class _ElectronicsCategoryListState extends State<ElectronicsCategoryList> {
  // ignore: prefer_final_fields
  var image = [
    'assets/images/lap1.jpg',
    'assets/images/lap2.jpg',
    'assets/images/lap3.jpg',
    'assets/images/lap4.jpg',
    'assets/images/mobile.jpg',
    'assets/images/fashion.jpg',
    'assets/images/beauty.jpg',
    'assets/images/deals.jpg',
    'assets/images/movie.jpg',
    'assets/images/furniture.jpg',
  ];
  var garmentsname = [
    'GEHU GARMENTS',
    'POSHAK HUB',
    'SKYASIA',
    'VASANT APPAREL'
  ];
  var productnames = [
    'Women printed Rayon kurtikfjjdshfgshkj',
    'Women floral printed kurti',
    'women printed crepe kurti',
    'women embroided crepe kurti'
  ];
  List<bool> iconindex = [];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: GridView.builder(
            primary: false,
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              for (var i = 0; i < 4; i++) {
                iconindex.add(true);
              }
              return InkWell(
                onTap: () {
                  Get.to(const ProductDetailsScreen());
                },
                child: Card(
                  elevation: 1,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 20.00.hp,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(2),
                                    topRight: Radius.circular(2)),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(image[index]))),
                          ),
                          Positioned(
                            right: 0,
                            top: 1.0.hp,
                            child: InkWell(
                              onTap: (() {
                                setState(() {
                                  iconindex[index] = !iconindex[index];
                                });
                              }),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: screenbackground,
                                child: iconindex[index] == true
                                    ? Icon(
                                        Icons.favorite_border,
                                        color: appcolor,
                                        size: 20,
                                      )
                                    : Icon(
                                        Icons.favorite,
                                        color: appcolor,
                                        size: 20,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          garmentsname[index],
                          style: subtitleStyle,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              '\$1,099',
                              style: productprice,
                            ),
                          ),
                          SizedBox(
                            width: 2.0.wp,
                          ),
                          FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              '\$1,099',
                              style: productpricestrike,
                            ),
                          ),
                          SizedBox(
                            width: 2.0.wp,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: 10.00.wp,
                            decoration: BoxDecoration(
                                color: appcolor,
                                borderRadius: BorderRadius.circular(2)),
                            child: Center(
                              child: Text(
                                '40%',
                                style: buttonprice,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 9.0,
                childAspectRatio: 2.40 / 3)));
  }
}
