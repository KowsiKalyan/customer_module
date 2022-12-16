import 'package:customermodule/all_packages.dart';

import 'homescreen/home_screen_ui.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;
  final List<Map<String, Widget>> _pages = [
    {
      'page': const HomeScreen(),
    },
    {
      'page': const CategoryScreen(),
    },
    {
      'page': ExploreScreen(),
    },
    {
      'page': const CartScreen(),
    },
    {
      'page': const ProfileScreen(),
    },
  ];
  getappbar() {
    return AppBar(
        elevation: 10,
        backgroundColor: appcolor,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back)),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.add_shopping_cart_rounded,
              color: screenbackground,
              size: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.notifications,
              color: screenbackground,
              size: 20,
            ),
          ),
        ],
        title: Text(
          'C SHOP',
          style: loginbuttonstyle,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _currentIndex == 0 ? getappbar() : null,
        backgroundColor: Colors.white,
        body: _pages[_currentIndex]['page'],
        bottomNavigationBar: BottomNavyBar(
          containerHeight: 70,
          selectedIndex: _currentIndex,
          showElevation: false,
          itemCornerRadius: 24,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          curve: Curves.easeIn,
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: const Icon(
                Icons.home,
                size: 20,
              ),
              title: Text(
                'Home',
              ),
              activeColor: appcolor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(
                Icons.category,
                size: 20,
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 1.0),
                child: Text('Category'),
              ),
              activeColor: appcolor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(
                Icons.explore,
                size: 20,
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 1.0),
                child: Text('Explore'),
              ),
              activeColor: appcolor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(
                Icons.add_shopping_cart_rounded,
                size: 20,
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 1.0),
                child: Text('Cart'),
              ),
              activeColor: appcolor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(
                Icons.person,
                size: 20,
              ),
              title: Text('Profile'),
              activeColor: appcolor,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
