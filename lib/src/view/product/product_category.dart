import '../../../all_packages.dart';

class ProductCategoryList extends StatefulWidget {
  const ProductCategoryList({Key? key}) : super(key: key);

  @override
  State<ProductCategoryList> createState() => _ProductCategoryListState();
}

class _ProductCategoryListState extends State<ProductCategoryList> {
  var image = [
    'assets/images/01.png',
    'assets/images/02.png',
    'assets/images/03.png',
    'assets/images/04.png',
    'assets/images/mobile.jpg',
    'assets/images/fashion.jpg',
    'assets/images/beauty.jpg',
    'assets/images/deals.jpg',
    'assets/images/movie.jpg',
    'assets/images/furniture.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: GridView.builder(
            primary: false,
            itemCount: image.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  // Get.to(const ProductDetailsScreen());
                },
                child: Card(
                  child: Column(
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
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'DMuse',
                          style: listtitle,
                          textAlign: TextAlign.start,
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
                          FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              '\$1,099',
                              style: productpricestrike,
                            ),
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
                      )
                    ],
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 9.0,
                childAspectRatio: 2.5 / 3)));
  }
}
