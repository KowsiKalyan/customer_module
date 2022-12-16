import 'dart:async';

import 'package:customermodule/all_packages.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: MyWidget()),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var firstBuild = 0;
  Timer? timer;
  // show Open Dialog method
  _showOpenDialog(context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              color: appcolor,
              height: 100,
              width: 200,
              child: Image.asset('assets/images/splash.gif'),
            ),
          );
        });
  }

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      _showOpenDialog(context);
    });
    timer!.cancel();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (firstBuild == 0) {
        firstBuild = 1;
        _showOpenDialog(context);
      }
    });
    return const Text('Hello, World!');
  }
}
