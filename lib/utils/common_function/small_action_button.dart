import 'package:customermodule/all_packages.dart';

class SmallActionButton extends StatelessWidget {
  final String text;

  final TextStyle? style;
  final Color? bgcolor;
  final double? radiusvalue;
  final Color bordercolor;
  final double? elevationvalue;
  final VoidCallback press;

  const SmallActionButton({
    Key? key,
    required this.text,
    this.bgcolor,
    required this.bordercolor,
    this.radiusvalue,
    this.elevationvalue,
    this.style,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        height: 5.0.hp,
        width: 30.0.wp,
        decoration: BoxDecoration(
            color: bgcolor,
            border: Border.all(
              color: bordercolor,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: ElevatedButton(
          onPressed: press,
          style: ElevatedButton.styleFrom(
              primary: bgcolor,
              elevation: elevationvalue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              textStyle: style),
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}
