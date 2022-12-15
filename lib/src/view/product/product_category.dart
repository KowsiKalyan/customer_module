import 'dart:async';

import '../../../all_packages.dart';

class ProductCategoryList extends StatefulWidget {
  const ProductCategoryList({Key? key}) : super(key: key);

  @override
  State<ProductCategoryList> createState() => _ProductCategoryListState();
}

class _ProductCategoryListState extends State<ProductCategoryList> {
  var image = [
    'assets/images/dress1.jpg',
    'assets/images/dress2.jpg',
    'assets/images/dress3.jpg',
    'assets/images/dress5.jpg',
    'assets/images/mobile.jpg',
    'assets/images/fashion.jpg',
    'assets/images/beauty.jpg',
    'assets/images/deals.jpg',
    'assets/images/movie.jpg',
    'assets/images/furniture.jpg',
  ];
  Timer? timer;

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
  bool _showBox = true;
  var count = 0;
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (count == 0) {
        // cancel the timer
        timer.cancel();
      }
      count = 1;
    });
    super.initState();
  }

  final List<String> _items = [];

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
                  // Get.to(const ProductDetailsScreen());
                  setState(() {
                    iconindex[index] = !iconindex[index];
                  });
                },
                child: Card(
                  elevation: 1,
                  child: Stack(
                    children: [
                      Container(
                        height: 26.00.hp,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(image[index]))),
                      ),
                      Positioned(
                          top: 5,
                          right: 0,
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
                          )),
                      Positioned(
                        bottom: 12.0.hp,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            garmentsname[index],
                            style: subtitleStyle,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10.0.hp,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 50.0.wp,
                            child: Text(productnames[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                softWrap: false,
                                style: formhintstyle),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 7.0.hp,
                        child: Row(
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
                      ),
                      Positioned(
                        bottom: 4.0.hp,
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: FittedBox(
                                child: Text(
                                  'free delivery',
                                  style: totalstyledis,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          bottom: 0.0.hp,
                          child: Container(
                            height: 3.0.hp,
                            width: 20.0.wp,
                            color: amber,
                            child: Center(
                                child: Text(
                              'Hot Deals',
                              style: subtitleStyle,
                            )),
                          )),
                      Positioned(
                        bottom: 0.0.hp,
                        right: 5.0,
                        child: Icon(
                          Icons.share,
                          color: appcolor,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 9.0,
                childAspectRatio: 1.60 / 3)));
  }
}
