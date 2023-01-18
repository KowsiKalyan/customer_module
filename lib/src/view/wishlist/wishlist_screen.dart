import 'package:customermodule/all_packages.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appcolor,
        title: Text(
          'Wishlist',
          style: apptitle,
        ),
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: ((context, index) {
            return Stack(children: [
              SizedBox(
                height: 13.0.hp,
                width: 100.0.wp,
              ),
              Positioned(
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 12.0.hp,
                    width: 100.0.wp,
                    child: Card(
                        child: Row(children: [
                      SizedBox(
                          height: 12.0.hp,
                          width: 30.0.wp,
                          child: Image.asset(
                            image[index],
                            fit: BoxFit.fill,
                          )),
                      SizedBox(
                        width: 4.0.wp,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name[index].toString(),
                            style: orderdetails,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                            ],
                          ),
                        ],
                      ),
                    ])),
                  ),
                ),
              ),
              Positioned(
                  top: 10,
                  right: 4.0.wp,
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        name.removeAt(index);
                      });
                    }),
                    child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: buttoncolor,
                        child: Icon(
                          Icons.close,
                          color: screenbackground,
                          size: 15,
                        )),
                  ))
            ]);
          })),
    );
  }
}
