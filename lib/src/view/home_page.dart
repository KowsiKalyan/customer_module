import 'package:customermodule/all_packages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Map<String, Widget>> _pages = [
    {
      'page': const HomeScreen(),
    },
    {
      'page': const HistoryScreen(),
    },
    {
      'page': const NotificationScreen(),
    },
    {
      'page': const MenuScreen(),
    },
    {
      'page': const HistoryScreen(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
