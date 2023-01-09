import '../../../all_packages.dart';

class ExpandableStorage extends StatefulWidget {
  const ExpandableStorage({super.key});

  @override
  State<ExpandableStorage> createState() => _ExpandableStorageState();
}

class _ExpandableStorageState extends State<ExpandableStorage> {
  var expandalbeindex;
  var itemweightindex;
  var materialtypeindex;
  var productdimensionindex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Expandable Storage',
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
                      expandalbeindex = index;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        color: expandalbeindex == index
                            ? appcolor
                            : screenbackground,
                        border: Border.all(
                            color: expandalbeindex == index
                                ? appcolor
                                : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '64GB',
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
            'Item weight',
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
              itemCount: 3,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      itemweightindex = index;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        color: itemweightindex == index
                            ? appcolor
                            : screenbackground,
                        border: Border.all(
                            color: itemweightindex == index
                                ? appcolor
                                : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '186 g',
                        style: orderdetails,
                      ),
                    ),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 6 / 3),
            ),
          ),
          Divider(),
          Text(
            'Material Type',
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
              itemCount: 1,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      materialtypeindex = index;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        color: materialtypeindex == index
                            ? appcolor
                            : screenbackground,
                        border: Border.all(
                            color: materialtypeindex == index
                                ? appcolor
                                : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'plastic',
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
          Divider(),
          Text(
            'Product Dimensions',
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
              itemCount: 2,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      productdimensionindex = index;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 20.0.wp,
                    decoration: BoxDecoration(
                        color: productdimensionindex == index
                            ? appcolor
                            : screenbackground,
                        border: Border.all(
                            color: productdimensionindex == index
                                ? appcolor
                                : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '1.5*0.9*7.5',
                        style: orderdetails,
                      ),
                    ),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 7 / 2),
            ),
          ),
        ],
      ),
    );
  }
}
