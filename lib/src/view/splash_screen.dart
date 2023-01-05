import 'dart:async';

import 'package:customermodule/all_packages.dart';
import 'package:customermodule/src/view/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
              PageRouteBuilder(
                fullscreenDialog: true,
                transitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) {
                  return const DashboardScreen();
                },
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  return FadeTransition(
                    opacity:
                        animation, // CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
                    child: const LoginScreen(),
                  );
                },
              ),
            )

        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //     builder: (BuildContext context) => const LoginScreen())
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenbackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.shopping_cart,
              color: appcolor,
              size: 40,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/splashlogo.PNG',
              height: 25.0.hp,
            ),
          )
        ],
      ),
    );
  }
}
