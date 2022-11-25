import 'dart:developer';

import '../../../all_packages.dart';

class ColorChoose extends StatefulWidget {
  const ColorChoose({super.key});

  @override
  State<ColorChoose> createState() => _ColorChooseState();
}

class _ColorChooseState extends State<ColorChoose> {
  List<Color> colors = [
    Colors.pink,
    Colors.black,
    Colors.brown,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.00.wp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Color',
            style: listtitle,
          ),
          SizedBox(
            height: 1.00.hp,
          ),
          InkWell(
            onTap: (() {
              // Fluttertoast.showToast(msg: '${colors[index]}');
            }),
            child: Container(
              height: 5.00.hp,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 18.00.hp,
                      width: 14.00.wp,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: colors[index]),
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
