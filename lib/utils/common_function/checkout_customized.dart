import '../../all_packages.dart';

class CheckoutInputFields extends StatelessWidget {
  CheckoutInputFields({super.key, this.icon, this.hintText, this.controller});
  IconData? icon;
  String? hintText;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: appcolor,
            size: 28,
          ),
          SizedBox(
            width: 1.0.wp,
          ),
          Container(
            color: Colors.white,
            height: 6.00.hp,
            width: 80.00.wp,
            child: TextFormField(
              controller: controller,
              style: forminputstyle,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: appcolor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                        color: const Color(0xffC6C6C6).withOpacity(0.5),
                        width: 1),
                  ),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: hintText,
                  contentPadding: const EdgeInsets.only(left: 10),
                  hintStyle: formhintstyle,
                  border: const OutlineInputBorder(
                    gapPadding: 4,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
