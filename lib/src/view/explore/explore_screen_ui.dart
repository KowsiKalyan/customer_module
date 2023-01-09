import 'dart:ffi';

import 'package:customermodule/all_packages.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../homescreen/homescreen.dart';
import '../product/categorylist.dart';
import 'all_produts_filters.dart';
import 'allproducts_ui.dart';
import 'allseller_ui.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  var selectedindex = 0;
  var sortednameindex = 0;
  final ScrollController _scrollBottomBarController = ScrollController();
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
          toolbarHeight: 13.0.hp,
          automaticallyImplyLeading: false,
          backgroundColor: screenbackground,
          elevation: 0,
          title: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                height: 6.0.hp,
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
              SizedBox(
                height: 1.0.hp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedindex = 0;
                      });
                    },
                    child: Material(
                      elevation: selectedindex == 0 ? 5 : 0,
                      child: Container(
                        height: 5.00.hp,
                        width: 43.00.wp,
                        decoration: BoxDecoration(
                            color:
                                selectedindex == 0 ? buttoncolor : Colors.white,
                            border: Border.all(
                              color: selectedindex == 0
                                  ? buttoncolor
                                  : Colors.white,
                            )),
                        child: Center(
                            child: Text(
                          'All Products',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 11.00.sp,
                                  color: selectedindex == 0
                                      ? Colors.white
                                      : const Color(0xffA3A3A3),
                                  fontWeight: FontWeight.w500)),
                        )),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedindex = 1;
                      });
                    },
                    child: Material(
                      elevation: selectedindex == 1 ? 5 : 0,
                      child: Container(
                        height: 5.00.hp,
                        width: 43.00.wp,
                        decoration: BoxDecoration(
                            color:
                                selectedindex == 1 ? buttoncolor : Colors.white,
                            border: Border.all(
                              color: selectedindex == 1
                                  ? buttoncolor
                                  : const Color(0xffC6C6C6).withOpacity(0.5),
                            )),
                        child: Center(
                            child: Text(
                          'All Sellers',
                          style: GoogleFonts.jost(
                              textStyle: TextStyle(
                                  fontSize: 11.00.sp,
                                  color: selectedindex == 1
                                      ? Colors.white
                                      : const Color(0xffA3A3A3),
                                  fontWeight: FontWeight.w500)),
                        )),
                      ),
                    ),
                  )
                ],
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(left: 10.0),
              //       child: Container(
              //           height: 6.00.hp,
              //           width: 40.00.wp,
              //           child: DropdownButtonHideUnderline(
              //             child: DropdownButton<String>(
              //               style: GoogleFonts.jost(
              //                   textStyle: TextStyle(
              //                       fontSize: 10.00.sp,
              //                       color: forminputcolor,
              //                       fontWeight: FontWeight.w500)),
              //               hint: Center(
              //                 child: Text('Sort By',
              //                     style: GoogleFonts.jost(
              //                         textStyle: TextStyle(
              //                             fontSize: 10.00.sp,
              //                             color: appcolor,
              //                             fontWeight: FontWeight.w500))),
              //               ),
              //               // onChanged: (String? newValue) async {
              //               //   setState(() {
              //               //     selectstate = newValue.toString();
              //               //   });
              //               // },
              //               icon: Image.asset(
              //                 'assets/images/arrow.png',
              //                 color: appcolor,
              //                 height: 20,
              //                 width: 20,
              //               ),
              //               items: state.map<DropdownMenuItem<String>>((items) {
              //                 return DropdownMenuItem<String>(
              //                   value: items,
              //                   child: Container(
              //                       child: Text(items.toString(),
              //                           style: GoogleFonts.jost(
              //                               textStyle: TextStyle(
              //                                   fontSize: 10.00.sp,
              //                                   color: appcolor,
              //                                   fontWeight: FontWeight.w500)))),
              //                 );
              //               }).toList(),
              //               value: selectstate,
              //               onChanged: (value) {
              //                 setState(() {
              //                   selectstate = value!;
              //                 });
              //               },
              //             ),
              //           )),
              //     ),
              //     Icon(
              //       Icons.filter_alt,
              //       color: appcolor,
              //     )
              //   ],
              // ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 5.0),
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         TextButton(
              //           onPressed: () {
              //             showdialog();
              //           },
              //           child: Row(
              //             children: [
              //               Text(
              //                 'Sort by',
              //                 style: subtitleStyleappcolor,
              //               ),
              //               Icon(
              //                 Icons.arrow_drop_down,
              //                 color: appcolor,
              //               ),
              //             ],
              //           ),
              //         ),
              //         IconButton(
              //             onPressed: (() {
              //               Get.to(AllProductsFilter());
              //             }),
              //             icon: Icon(
              //               Icons.filter_alt,
              //               color: appcolor,
              //             ))
              //       ]),
              // )
            ],
          )),
      body: selectedindex == 0 ? AllProductExplorePage() : AllSellersScreen(),
    );
  }
}
