import 'package:customermodule/all_packages.dart';

class CustomWidgets extends StatelessWidget {
  CustomWidgets({super.key, this.offer, this.titletext, this.showmoretext});

  String? titletext;
  String? offer;
  String? showmoretext;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 5.0,
            top: 10,
          ),
          child: Text(
            titletext!,
            style: toptitleStyleappcolor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                offer!,
                style: subtitleStyle,
              ),
              Container(
                height: 3.0.hp,
                width: 20.0.wp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: appcolor,
                ),
                child: Center(
                  child: Text(
                    showmoretext!,
                    style: showmore,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
