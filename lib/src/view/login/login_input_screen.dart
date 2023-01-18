import '../../../all_packages.dart';

class LoginInputFields extends StatefulWidget {
  const LoginInputFields({Key? key}) : super(key: key);

  @override
  State<LoginInputFields> createState() => _LoginInputFieldsState();
}

class _LoginInputFieldsState extends State<LoginInputFields> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  bool _isPinnewHidden = true;

  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 7.00.hp, width: 90.00.wp,
            // padding: const EdgeInsets.only(
            //   left: 20,
            //   right: 20,
            // ),
            child: TextFormField(
              controller: mobile,
              style: forminputstyle,
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
                  fillColor: const Color(0xffC6C6C6),
                  hintText: 'Mobile number',
                  contentPadding: const EdgeInsets.only(left: 10),
                  hintStyle: formhintstyle,
                  border: const OutlineInputBorder(
                    gapPadding: 4,
                  )),
            ),
          ),
          SizedBox(height: 3.00.hp),
          Container(
            color: Colors.white,
            height: 6.00.hp, width: 90.00.wp,
            // padding: const EdgeInsets.only(
            //   left: 20,
            //   right: 20,
            // ),
            child: TextFormField(
              controller: password,
              obscureText: _isPinnewHidden,
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
                  suffixIcon: InkWell(
                    onTap: () {
                      _togglecnewPinView();
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 5, bottom: 15),
                      child: Icon(
                        _isPinnewHidden
                            ? Icons.visibility
                            : Icons.visibility_off,
                        size: MediaQuery.of(context).size.height * 0.025,
                        color: const Color(0xffC6C6C6),
                      ),
                    ),
                  ),
                  fillColor: const Color(0xffC6C6C6),
                  hintText: 'Password',
                  contentPadding: const EdgeInsets.only(left: 10),
                  hintStyle: formhintstyle,
                  border: const OutlineInputBorder(
                    gapPadding: 4,
                  )),
            ),
          ),
          SizedBox(height: 2.00.hp),
          InkWell(
            onTap: () {
              Get.to(const ForgotPasswordScreen());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 9.00.sp,
                            color: appcolor,
                            fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 3.00.hp),
          ButtonIconButton(
            press: () {
              if (formKey.currentState!.validate()) {
                Get.to(const DashboardScreen());
              }
            },
            bordercolor: appcolor,
            text: 'LOG IN',
          ),
        ],
      ),
    );
  }
}
