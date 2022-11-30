import '../../../all_packages.dart';

class ColorChoose extends StatefulWidget {
  const ColorChoose({super.key});

  @override
  State<ColorChoose> createState() => _ColorChooseState();
}

class _ColorChooseState extends State<ColorChoose> {
  ColorController colorController = Get.put(ColorController());

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
          Container(
            height: 60,
            width: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: colorController.text.length,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: (() {
                      setState(() {
                        colorController.colorindex = index;
                        colorController.textindex = index;
                        print(colorController.colorindex.toString());
                        print(colorController.text[colorController.textindex]
                            .toString());
                      });
                    }),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: colorController.colors[index],
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
