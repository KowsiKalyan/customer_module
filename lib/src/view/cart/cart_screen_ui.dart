import 'package:customermodule/all_packages.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var text = [
    'assets/images/Home-Slider.png',
  ];
  PageController? pageController = PageController();
  PhotoViewScaleStateController scaleStateController =
      PhotoViewScaleStateController();
  @override
  void initState() {
    scaleStateController = PhotoViewScaleStateController();
    super.initState();
  }

  @override
  void dispose() {
    scaleStateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolor,
      ),
    );
  }
}
