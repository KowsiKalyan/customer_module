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
    'assets/images/01.png',
    'assets/images/02.png',
    'assets/images/03.png',
    'assets/images/04.png'
  ];
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  getaddrocart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: (() {
            log('clickkkkkedddddd');
            Get.to(AddToCart());
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        toolbarHeight: 12.00.hp,
        backgroundColor: appcolor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                  height: 16.00.hp,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Color',
                        style: listtitle,
                      ),
                      Container(
                        height: 10.00.hp,
                        width: 140.00.wp,
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
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: 7.00.hp,
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
                SizedBox(
                  height: 1.00.hp,
                ),
                const ProductAboutUi(),
                const ProductAboutUi(),
                SizedBox(
                  height: 1.00.hp,
                ),
                getaddrocart()
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           label: 'hi',
      //           icon: Icon(Icons.home),
      //           backgroundColor: Colors.green),
      //       BottomNavigationBarItem(
      //           label: 'hi',
      //           icon: Icon(Icons.search),
      //           backgroundColor: Colors.yellow),
      //       BottomNavigationBarItem(
      //         label: 'hi',
      //         icon: Icon(Icons.person),
      //         backgroundColor: Colors.blue,
      //       ),
      //     ],
      //     type: BottomNavigationBarType.shifting,
      //     currentIndex: _selectedIndex,
      //     selectedItemColor: Colors.black,
      //     iconSize: 40,
      //     onTap: _onItemTapped,
      //     elevation: 5),
    );
  }
}
