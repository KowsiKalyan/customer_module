import 'dart:developer';

import 'package:customermodule/all_packages.dart';
import 'package:customermodule/src/view/explore/connectivity_tech.dart';
import 'package:customermodule/src/view/explore/size.dart';

import 'expandable_storage.dart';

class AllProductsFilter extends StatefulWidget {
  const AllProductsFilter({super.key});

  @override
  State<AllProductsFilter> createState() => _AllProductsFilterState();
}

class _AllProductsFilterState extends State<AllProductsFilter> {
  RangeValues _currentRangeValues = const RangeValues(0, 80);
  var selectedindex;
  var selectedcolorindex;
  var colors = [Color(0xFF2196F3), Color(0xFFF44336), amber];
  var selectedcolorsoutline = [
    Color(0xFF77B9F0),
    Color(0xFFF3847C),
    Color(0xFFF3D785)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appcolor,
        title: Text(
          'Filter',
          style: apptitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price Range',
                style: subtitleStylebold,
              ),
              RangeSlider(
                activeColor: appcolor,
                inactiveColor: Colors.pink[200],
                values: _currentRangeValues,
                max: 100,
                divisions: 5,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
              Divider(),
              Text(
                'Battery Power',
                style: subtitleStylebold,
              ),
              SizedBox(
                height: 1.0.hp,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 10.0.hp,
                  width: 100.0.wp,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: (() {
                          setState(() {
                            selectedindex = index;
                          });
                        }),
                        child: Container(
                          height: 4.0.hp,
                          width: 18.0.wp,
                          decoration: BoxDecoration(
                              color: selectedindex == index
                                  ? appcolor
                                  : screenbackground,
                              border: Border.all(
                                  color: selectedindex == index
                                      ? appcolor
                                      : formhintcolor),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '600MH',
                              style: orderdetails,
                            ),
                          ),
                        ),
                      );
                    }),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            mainAxisSpacing: 10.0,
                            crossAxisSpacing: 10,
                            childAspectRatio: 6 / 3),
                  ),
                ),
              ),
              Divider(),
              Text(
                'Color',
                style: subtitleStylebold,
              ),
              Container(
                height: 8.0.hp,
                width: 100.0.wp,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: ((context, colorindex) {
                        return CircleAvatar(
                          radius: 22,
                          backgroundColor: selectedcolorindex == colorindex
                              ? selectedcolorsoutline[colorindex]
                              : screenbackground,
                          child: InkWell(
                            onTap: (() {
                              setState(() {
                                selectedcolorindex = colorindex;
                                log(colors[colorindex].toString());
                              });
                            }),
                            child: Container(
                              height: 4.0.hp,
                              width: 10.0.wp,
                              decoration: BoxDecoration(
                                  color: colors[colorindex],
                                  shape: BoxShape.circle),
                            ),
                          ),
                        );
                      })),
                ),
              ),
              Divider(),
              Text(
                'Connectivity Technologies',
                style: subtitleStylebold,
              ),
              SizedBox(
                height: 1.0.hp,
              ),
              ConnectivityTech(),
              Divider(),
              SizedBox(
                height: 1.0.hp,
              ),
              ExpandableStorage(),
              Divider(),
              SizeExplore()
            ],
          ),
        ),
      ),
    );
  }
}
