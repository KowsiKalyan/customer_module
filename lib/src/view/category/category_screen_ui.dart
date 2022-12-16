import 'package:flutter/material.dart';

import '../../../all_packages.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var image = [
    'assets/images/category/earpods.jpg',
    'assets/images/category/mensfashion.jpg',
    'assets/images/category/womensfashion.jpg',
    'assets/images/category/walldecor.jpg',
    'assets/images/mobile1.jpg',
    'assets/images/category/watch.jpg',
    'assets/images/category/outdoor.jpg',
    'assets/images/category/decoration.jpg',
    'assets/images/fashion.jpg',
    'assets/images/category/sofa.jpg',
    'assets/images/laptop1.jpg',
    'assets/images/category/chair.jpg',
    'assets/images/category/games.jpg',
    'assets/images/category/stands.jpg',
    'assets/images/category/homeneeds.jpg',
    'assets/images/category/crafts.jpg',
    'assets/images/category/charger.jpg',
    'assets/images/category/mask.jpg',
    'assets/images/category/mobilecover.png',
    'assets/images/category/veg.jpg',
    'assets/images/category/glass.jpg',
    'assets/images/furniture.jpg',
    'assets/images/category/pharma.jpg',
    'assets/images/category/footwear.jpg',
    'assets/images/category/drinks.jpg',
    'assets/images/category/babe.jpg',
    'assets/images/category/couche.jpg',
    'assets/images/category/crafts.jpg',
  ];
  var productname = [
    'earpods',
    'mens fashion',
    'womens fashion',
    'wall decoration',
    'mobile',
    'watch',
    'outdoor Garden',
    'decor',
    'fashion',
    'sofa',
    'computer',
    'chair',
    'games',
    'stands',
    'homeneeds',
    'crafts',
    'charger',
    'mask',
    'mobilecover',
    'vegtables',
    'eye wear',
    'funiture',
    'pharmacy',
    'footwear',
    'drinks',
    'baby care',
    'couche',
    'crafts and gifts'
  ];
  @override
  void initState() {
    print(image.length.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: InputDecoration(
              hintText: 'All Categories',
              hintStyle: apptitle,
              border: InputBorder.none),
          style: apptitle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(
              Icons.search,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Icon(
              Icons.mic,
            ),
          )
        ],
        backgroundColor: appcolor,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: GridView.builder(
              primary: false,
              itemCount: image.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(Productsubcategory(
                      index: index.toString(),
                      text: '',
                    ));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.0.hp),
                    child: Column(
                      children: [
                        Container(
                          height: 8.0.hp,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(image[index])),
                              shape: BoxShape.circle,
                              color: appcolor),
                        ),
                        Text(
                          productname[index],
                          style: categoryprice,
                        )
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 1.0,
                  childAspectRatio: 2.5 / 3))),
    );
  }
}
