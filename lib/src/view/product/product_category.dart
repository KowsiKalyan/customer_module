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
    'VASANT APPAREL',
    'TRENDS',
    'MAX'
  ];
  var productnames = [
    'Women printed Rayon kurtikfjjdshfgshkj',
    'Women floral printed kurti',
    'women printed crepe kurti',
    'women embroided crepe kurti',
    'Max kurti',
    'Trends kurti'
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
            itemCount: 6,
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
                        height: 16.00.hp,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2)),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(image[index]))),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            height: 5.0.hp,
                            width: 30.0.wp,
                            color: screenbackground,
                          )),
                      Positioned(
                        bottom: 16,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            garmentsname[index],
                            style: categorystyle,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      // Align(
                      //   alignment: Alignment.topLeft,
                      //   child: SizedBox(
                      //     width: 50.0.wp,
                      //     child: Text(productnames[index],
                      //         maxLines: 1,
                      //         overflow: TextOverflow.ellipsis,
                      //         softWrap: false,
                      //         style: formhintstyle),
                      //   ),
                      // ),
                      Positioned(
                        bottom: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              fit: BoxFit.cover,
                              child: Text(
                                '\$1,099',
                                style: categoryprice,
                              ),
                            ),
                            SizedBox(
                              width: 2.0.wp,
                            ),
                            FittedBox(
                              fit: BoxFit.cover,
                              child: Text(
                                '\$1,099',
                                style: categoryprice,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 0,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: 10.00.wp,
                            decoration: BoxDecoration(
                                color: appcolor,
                                borderRadius: BorderRadius.circular(2)),
                            child: Center(
                              child: Text(
                                '20%',
                                style: buttonprice,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0,
                childAspectRatio: 2.40 / 3)));
  }
}
