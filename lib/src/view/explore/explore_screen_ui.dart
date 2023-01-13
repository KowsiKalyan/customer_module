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

  final ScrollController _scrollBottomBarController = ScrollController();

  var selectstate;

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
                              color: selectedindex == 0
                                  ? buttoncolor
                                  : Colors.white,
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
                              color: selectedindex == 1
                                  ? buttoncolor
                                  : Colors.white,
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
              ],
            )),
        body:
            selectedindex == 0 ? AllProductExplorePage() : AllSellersScreen());
  }
}
