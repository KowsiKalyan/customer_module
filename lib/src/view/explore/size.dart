import '../../../all_packages.dart';

class SizeExplore extends StatefulWidget {
  const SizeExplore({super.key});

  @override
  State<SizeExplore> createState() => _SizeExploreState();
}

class _SizeExploreState extends State<SizeExplore> {
  var sizeindex;
  var wirelessindex;
  var woodenindex;
  var images = [
    'assets/images/dress1.jpg',
    'assets/images/dress2.jpg',
    'assets/images/dress3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: subtitleStylebold,
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          SizedBox(
            height: 10.0.hp,
            width: 100.0.wp,
            child: GridView.builder(
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      sizeindex = index;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        color: sizeindex == index ? appcolor : screenbackground,
                        border: Border.all(
                            color:
                                sizeindex == index ? appcolor : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '5L',
                        style: orderdetails,
                      ),
                    ),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 6 / 3),
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Text(
            'Wireless Commmunication Technologies',
            style: subtitleStylebold,
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          SizedBox(
            height: 10.0.hp,
            width: 100.0.wp,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: images.length,
              itemBuilder: ((context, index1) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      wirelessindex = index1;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(images[index1].toString())),
                        color: wirelessindex == index1
                            ? appcolor
                            : screenbackground,
                        border: Border.all(
                            color: wirelessindex == index1
                                ? appcolor
                                : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2.50 / 3),
            ),
          ),
          Divider(),
          Text(
            'Wooden',
            style: subtitleStylebold,
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          SizedBox(
            height: 5.0.hp,
            width: 100.0.wp,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: ((context, index2) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      woodenindex = index2;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        color:
                            woodenindex == index2 ? appcolor : screenbackground,
                        border: Border.all(
                            color: woodenindex == index2
                                ? appcolor
                                : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '2gb',
                        style: orderdetails,
                      ),
                    ),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 6 / 3),
            ),
          ),
        ],
      ),
    );
  }
}
