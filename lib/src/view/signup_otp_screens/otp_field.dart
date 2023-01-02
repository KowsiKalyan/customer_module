import 'package:customermodule/src/view/login/login_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../all_packages.dart';

class OtpField extends StatefulWidget {
  const OtpField({Key? key}) : super(key: key);

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField> {
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 0),
                child: PinCodeTextField(
                  appContext: context,
                  textStyle: GoogleFonts.jost(
                      textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                  pastedTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 4,
                  //obscureText: true,
                  // obscuringCharacter: '*',
                  // obscuringWidget: FlutterLogo(
                  //   size: 24,
                  // ),
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: MediaQuery.of(context).size.width * 0.15,
                    activeColor: appcolor,
                    selectedFillColor: appcolor,
                    selectedColor: Colors.white,
                    inactiveColor: const Color(0xffD9D9D9),
                    inactiveFillColor: Colors.white,
                    activeFillColor: hasError ? Colors.grey[100] : appcolor,
                  ),
                  cursorColor: Colors.white,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  // controller: otpVerifyController.otptext,

                  onChanged: (value) {
                    // ignore: avoid_print
                    print(value);
                    setState(() {
                      currentText = value;
                    });
                  },
                  // onCompleted: (value) {
                  //   print('success');
                  // },
                )),
          ),
          SizedBox(height: 2.00.hp),
          ButtonIconButton(
            press: () async {
              Get.to(LoginScreen());
            },
            bordercolor: appcolor,
            text: 'VERIFY OTP',
          ),
          SizedBox(height: 4.00.hp),
        ],
      ),
    );
  }
}
