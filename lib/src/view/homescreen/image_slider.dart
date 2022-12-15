import 'package:customermodule/all_packages.dart';

class ImageSliderHome extends StatefulWidget {
  const ImageSliderHome({Key? key}) : super(key: key);

  @override
  State<ImageSliderHome> createState() => _ImageSliderHomeState();
}

class _ImageSliderHomeState extends State<ImageSliderHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 22.0.hp,
        // height: 185,

        child: CarouselWithIndicatorDemo());
  }
}
