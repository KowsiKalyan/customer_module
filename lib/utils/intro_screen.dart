import 'package:customermodule/all_packages.dart';
import 'package:customermodule/src/view/homescreen/homescreen.dart';
import 'package:customermodule/src/view/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  SharedPreferences? prefs;
  String? boolKey;
  IntroScreen({this.boolKey, this.prefs});

  Widget build(BuildContext context) {
    prefs!.setBool(boolKey!, false);
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: titleTextStyle,
      bodyTextStyle: subtitleStyleappcolor,
      //body text size and color

      //decription padding
      imagePadding: EdgeInsets.only(top: 50), //image padding
      boxDecoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          //   stops: [0.1, 0.5, 0.7, 0.9],
          //   colors: [
          //     Colors.orange,
          //     Colors.deepOrangeAccent,
          //     Colors.red,
          //     Colors.redAccent,
          //   ],
          // ),
          color: screenbackground), //show linear gradient background of page
    );

    return IntroductionScreen(
      globalBackgroundColor: appcolor,
      //main background of screen
      pages: [
        //set your page view here
        PageViewModel(
          title: "Pick up the favorite things",
          body:
              " Instead of having to buy an entire share, invest any amount you want Instead of having to buy an entire share, invest any amount you want.",
          image: introImage('assets/img/store.gif'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Safe Payments Methods",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: introImage('assets/img/payment.gif'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Get it Delivered",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: introImage('assets/img/deliver.gif'),
          decoration: pageDecoration,
        ),

        //add more screen here
      ],

      onDone: () => goHomepage(context), //go to home page on done
      onSkip: () => goHomepage(context), // You can override on skip
      showSkipButton: true,
      dotsFlex: 0,
      nextFlex: 0,
      skip: const Text(
        'Skip',
        style: TextStyle(color: Colors.white),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: const Text(
        'Getting Stated',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
      dotsDecorator: const DotsDecorator(
        activeColor: amber,
        size: Size(10.0, 10.0), //size of dots
        color: Colors.white, //color of dots
        activeSize: Size(22.0, 10.0),
        //activeColor: Colors.white, //color of active dot
        activeShape: RoundedRectangleBorder(
          //shave of active dot
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void goHomepage(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return const SplashScreen();
    }), (Route<dynamic> route) => false);
    //Navigate to home page and remove the intro screen history
    //so that "Back" button wont work.
  }

  Widget introImage(String assetName) {
    //widget to show intro image
    return Align(
      alignment: Alignment.center,
      child: Image.asset(
        '$assetName',
      ),
    );
  }
}
