import 'package:customermodule/all_packages.dart';

class Productsubcategory extends StatefulWidget {
  const Productsubcategory(
      {super.key, required this.index, required this.text});
  final String index;
  final String text;

  @override
  State<Productsubcategory> createState() => _ProductsubcategoryState();
}

class _ProductsubcategoryState extends State<Productsubcategory> {
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
                      InkWell(
                        onTap: (() {
                          Get.back();
                        }),
                        child: const Icon(
                          Icons.arrow_back,
                          color: screenbackground,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          'WOMEN \'s FASHION',
                          style: loginbuttonstyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Icon(
                          Icons.search,
                          color: screenbackground,
                          size: 25,
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
                    width: 85.00.wp,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_upward,
                                color: appcolor,
                                size: 18,
                              ),
                              Icon(
                                Icons.arrow_downward,
                                color: appcolor,
                                size: 18,
                              ),
                              Text(
                                'SORT BY',
                                style: sort,
                              )
                            ],
                          ),
                          VerticalDivider(
                            width: 2,
                            thickness: 2,
                            endIndent: 10,
                            indent: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_upward,
                                color: appcolor,
                                size: 18,
                              ),
                              Icon(
                                Icons.arrow_downward,
                                color: appcolor,
                                size: 18,
                              ),
                              Text(
                                'REFINE ',
                                style: sort,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            ProductSubcategorylist(),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Card(
                child: Image.asset(
                  'assets/images/Offer.png',
                  height: 15.00.hp,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
