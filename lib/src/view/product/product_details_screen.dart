import '../../../all_packages.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("PRODUCT DETAIL"),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back, // add custom icons also
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
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
        toolbarHeight: 13.00.hp,
        backgroundColor: appcolor,
      ),
      body: Padding(
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
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/t.jpg'))),
              ),
              SizedBox(
                height: 4.00.hp,
              ),
              Container(
                height: 11.00.hp,
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
                height: 1.00.hp,
              ),
              const ColorChoose(),
              SizedBox(
                height: 1.00.hp,
              ),
              const ProductAboutUi(),
              SizedBox(
                height: 1.00.hp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 5.00.hp,
                    width: 40.00.wp,
                    decoration: BoxDecoration(
                        color: addtocart,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'ADD TO CART',
                        style: buttontext,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    height: 5.00.hp,
                    width: 40.00.wp,
                    decoration: BoxDecoration(
                        color: appcolor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'BUY NOW',
                        style: buttontext,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
