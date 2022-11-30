import '../../../all_packages.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appcolor,
          toolbarHeight: 10.0.hp,
          automaticallyImplyLeading: false,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_back,
                  color: screenbackground,
                ),
                Text(
                  'MY CART',
                  style: loginbuttonstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.add_shopping_cart_rounded,
                      color: screenbackground,
                      size: 20,
                    ),
                    SizedBox(
                      width: 2.00.wp,
                    ),
                    const Icon(
                      Icons.notifications,
                      color: screenbackground,
                      size: 20,
                    ),
                  ],
                )
              ]),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: 100.00.wp,
              color: Colors.red,
              child: ListView.builder(itemBuilder: ((context, index) {
                return Column();
              })),
            )
          ],
        ));
  }
}
