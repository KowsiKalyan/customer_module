import 'dart:developer';

import '../../../all_packages.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<Color> colors = [appcolor, toptitlecolor, pricebutton, amber];
  var colorindex = 0;
  var textindex = 0;
  var text = [
    'assets/images/Home-Slider.png',
    'assets/images/02.png',
    'assets/images/03.png',
    'assets/images/04.png'
  ];

  getaddrocart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: (() {
            Get.to(AddtocartUi());
            log('clickkkkkedddddd');
          }),
          child: Container(
            height: 5.00.hp,
            width: 40.00.wp,
            decoration: BoxDecoration(
                color: addtocart, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'ADD TO CART',
                style: buttontext,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Container(
          height: 5.00.hp,
          width: 40.00.wp,
          decoration: BoxDecoration(
              color: appcolor, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              'BUY NOW',
              style: buttontext,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("PRODUCT DETAIL"),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back, // add custom icons also
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.favorite_border,
                  color: screenbackground,
                ),
              )),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: appcolor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
          child: Container(
            height: 100.00.hp,
            width: 100.00.wp,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100.00.wp,
                  height: 25.00.hp,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(text[textindex]),
                ),
                SizedBox(
                  height: 2.00.hp,
                ),
                Container(
                  height: 10.00.hp,
                  width: 100.00.wp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Smart Watch',
                            style: listtitle,
                          ),
                          Text(
                            '\u20B9 345.00',
                            style: price,
                          )
                        ],
                      ),
                      Text(
                        'WOMEN\'s',
                        style: subtitleStyleappcolor,
                      ),
                      const ProductRatings()
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.00.hp,
                ),
                Container(
                  height: 11.00.hp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Color',
                        style: listtitle,
                      ),
                      SizedBox(
                        height: 1.00.hp,
                      ),
                      Container(
                        height: 5.00.hp,
                        width: 100.00.wp,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: colors.length,
                            itemBuilder: ((context, index) {
                              return InkWell(
                                onTap: (() {
                                  setState(() {
                                    colorindex = index;
                                    textindex = index;
                                    print(colorindex.toString());
                                    print(text[textindex].toString());
                                  });
                                }),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Container(
                                    height: 5.00.hp,
                                    width: 10.00.wp,
                                    decoration: BoxDecoration(
                                        color: colors[index],
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              );
                            })),
                      ),
                    ],
                  ),
                ),

                const ProductAboutUi(),

                SizedBox(
                  height: 1.00.hp,
                ),
                //getaddrocart()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:
          Padding(padding: EdgeInsets.all(8.0), child: getaddrocart()),
    );
  }
}
