import '../../all_packages.dart';

class ProfileCustomWidget extends StatelessWidget {
  ProfileCustomWidget({super.key, this.icon, this.image, this.text});
  String? text;
  IconData? icon;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95.00.wp,
      decoration: BoxDecoration(
        //color: screenbackground,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.only(left: 10, top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                image.toString(),
                height: 3.0.hp,
              ),
              SizedBox(
                width: 5.0.wp,
              ),
              Text(
                text!,
                style: orderdetails,
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                icon,
              ))
        ],
      ),
    );
  }
}
