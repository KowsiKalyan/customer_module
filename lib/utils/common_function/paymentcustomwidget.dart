import '../../all_packages.dart';

class PaymentCustomWidget extends StatelessWidget {
  PaymentCustomWidget({super.key, this.text, this.controller});

  String? text;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text!,
          style: orderdetails,
        ),
        Container(
          height: 5.00.hp,
          width: 50.00.wp,
          decoration: BoxDecoration(
              color: screenbackground,
              borderRadius: BorderRadius.circular(5.0)),
          child: TextFormField(
            controller: controller,
            style: GoogleFonts.jost(
                textStyle: TextStyle(
                    fontSize: 10.00.sp,
                    color: forminputcolor,
                    fontWeight: FontWeight.w500)),
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(color: toptitlecolor, width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                      color: const Color(0xffC6C6C6).withOpacity(0.5),
                      width: 1),
                ),
                fillColor: const Color(0xffC6C6C6),
                contentPadding: const EdgeInsets.only(left: 10),
                hintStyle: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.00.sp,
                        color: toptitlecolor,
                        fontWeight: FontWeight.w500)),
                border: const OutlineInputBorder(
                  gapPadding: 4,
                )),
          ),
        ),
      ],
    );
  }
}
