import 'package:customermodule/all_packages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 100.00.wp,
                  height: 18.00.hp,
                  color: screenbackground,
                ),
                Positioned(
                    top: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: const BoxDecoration(
                          color: appcolor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    )),
                Positioned(
                  top: 50,
                  left: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.list,
                        color: screenbackground,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: Text(
                          'C SHOP',
                          style: loginbuttonstyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100.0),
                        child: Row(
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
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 30,
                  right: 30,
                  child: Container(
                    height: 7.00.hp,
                    width: 80.00.wp,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.search,
                            color: formhintcolor,
                          ),
                          Container(
                              height: 50,
                              width: 200,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintStyle: notificationtime,
                                    hintText: 'search your products'),
                              )),
                          Icon(
                            Icons.mic,
                            color: formhintcolor,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            ImageSliderHome(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: ProductList(),
            ),
          ],
        ),
      ),
    );
  }
}
