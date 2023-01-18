import '../../../all_packages.dart';

class StorenameDetails extends StatefulWidget {
  const StorenameDetails({super.key});

  @override
  State<StorenameDetails> createState() => _StorenameDetailsState();
}

class _StorenameDetailsState extends State<StorenameDetails> {
  final ScrollController _scrollBottomBarController = ScrollController();
  var sortednameindex = 0;
  var sorted = [
    'Top Rated',
    'Newest First',
    'Oldest First',
    'Price-Low to High',
    'Price-High to Low'
  ];
  var selectstate;
  showdialog() async {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return SizedBox(
              height: 30.0.hp,
              child: ListView.builder(
                  itemCount: sorted.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: (() {
                        setState(
                          () {
                            sortednameindex = index;
                          },
                        );
                      }),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 28.0, right: 28.0, top: 10),
                        child: Container(
                            height: 5.0.hp,
                            width: 80.0.wp,
                            color: sortednameindex == index ? appcolor : null,
                            child: Center(
                                child: Text(
                              sorted[index].toString(),
                              style: orderdetails,
                            ))),
                      ),
                    );
                  })),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appcolor,
        title: Text(
          'Seller Details',
          style: apptitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _scrollBottomBarController,
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              floating: false,
              pinned: true,
              toolbarHeight: 25.0.hp,
              backgroundColor: screenbackground,
              titleSpacing: 0,
              title: Column(
                children: [
                  Container(
                    height: 6.0.hp,
                    width: 95.0.wp,
                    color: Get.isDarkMode ? Colors.black : screenbackground,
                    child: GestureDetector(
                      child: TextFormField(
                        style: subtitleStyle,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: appcolor,
                            ),
                            suffixIcon: Icon(
                              Icons.mic,
                              color: appcolor,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(color: appcolor, width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide:
                                  BorderSide(color: Colors.black45, width: 1),
                            ),
                            fillColor: const Color(0xffC6C6C6),
                            hintText: 'Search your products',
                            contentPadding: const EdgeInsets.only(left: 10),
                            hintStyle: formhintstylesearch,
                            border: const OutlineInputBorder(
                              gapPadding: 4,
                            )),
                      ),
                    ),
                  ),
                  Container(
                    height: 10.0.hp,
                    width: 100.0.wp,
                    color: screenbackground,
                    child: ListTile(
                      title: Text(
                        'Store_Name',
                        style: subtitleStylebold,
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            color: amber,
                          ),
                          Text(
                            '4.00',
                            style: orderdetails,
                          ),
                          SizedBox(
                            width: 10.0.wp,
                          ),
                          Text(
                            '|',
                            style: orderdetails,
                          ),
                          Text(
                            '4 Products',
                            style: orderdetails,
                          )
                        ],
                      ),
                      leading: Image.asset(
                        'assets/images/dress1.jpg',
                        height: 13.0.hp,
                      ),
                    ),
                  ),
                  Divider(),
                  Container(
                      child: ListTile(
                          title: TextButton(
                            onPressed: () {
                              showdialog();
                            },
                            child: Row(
                              children: [
                                Text(
                                  'Sort by',
                                  style: subtitleStyleappcolor,
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: appcolor,
                                ),
                              ],
                            ),
                          ),
                          trailing: IconButton(
                              onPressed: (() {
                                Get.to(AllSellerFilter());
                              }),
                              icon: Icon(
                                Icons.filter_alt,
                                color: appcolor,
                              )))),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(children: [AllSellerDetailsExplore()]),
            )
          ],
        ),
      ),
    );
  }
}
