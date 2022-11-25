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
    'assets/images/05.png',
    'assets/images/06.png',
    'assets/images/01.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: GridView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(ProductDetailsScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: card),
                          borderRadius: BorderRadius.circular(2)),
                      child: Column(
                        children: [
                          Container(
                            height: 16.00.hp,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
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
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                width: 10.00.wp,
                                decoration: BoxDecoration(
                                    color: pricebutton,
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
                      )),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5.0,
            )));
  }
}
