import 'package:customermodule/src/view/forgot_password/view.dart';

import '../../../all_packages.dart';

class ForgotPasswordInputField extends StatefulWidget {
  const ForgotPasswordInputField({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordInputField> createState() =>
      _ForgotPasswordInputFieldState();
}

class _ForgotPasswordInputFieldState extends State<ForgotPasswordInputField> {
  TextEditingController mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 3.00.hp),
        Container(
          color: Colors.white,
          height: 9.00.hp, width: 90.00.wp,
          // padding: const EdgeInsets.only(
          //   left: 20,
          //   right: 20,
          // ),
          child: TextFormField(
            style: forminputstyle,
            controller: mobile,
            maxLength: 10,
            //obscureText: _isPinnewHidden1,
            keyboardType: TextInputType.number,
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
                suffixIcon: InkWell(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 5, bottom: 15),
                    child: Icon(
                      Icons.phone,
                      size: MediaQuery.of(context).size.height * 0.025,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                fillColor: const Color(0xffC6C6C6),
                hintText: 'Mobile Number',
                contentPadding: const EdgeInsets.only(left: 10),
                hintStyle: formhintstyle,
                border: const OutlineInputBorder(
                  gapPadding: 4,
                )),
          ),
        ),
        SizedBox(height: 3.00.hp),
        ButtonIconButton(
          press: () async {
            Get.to(ForgotOTPScreen());
          },
          bordercolor: appcolor,
          text: 'SUBMIT',
        ),
      ],
    );
  }
}
