import 'package:customermodule/src/controller/getProfile_controller.dart';

import '../../../../all_packages.dart';

class DetailsSection extends StatefulWidget {
  const DetailsSection({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailsSection> createState() => _DetailsSectionState();
}

class _DetailsSectionState extends State<DetailsSection> {
  var reason;
  var city = ['Chennai', 'Trichy', 'Coimbatore', 'Cuddalore'];
  var state = ['TamilNadu', 'Pondicherry', 'Kerala', 'Karnataka'];
  ProfileController profileController = Get.put(ProfileController());
  TextEditingController mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xffD9D9D9).withOpacity(0.1),
          height: 7.00.hp,
          width: 95.00.wp,
          child: TextFormField(
            controller: profileController.userName,
            style: GoogleFonts.jost(
                textStyle: TextStyle(
                    fontSize: 10.00.sp,
                    color: forminputcolor,
                    fontWeight: FontWeight.w500)),
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
                suffixIcon: Icon(
                  Icons.person,
                  color: appcolor,
                ),
                // hintText: 'User Name',
                label: Text('Name'),
                labelStyle: subtitleStyleappcolor,
                contentPadding: const EdgeInsets.only(left: 10),
                hintStyle: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.00.sp,
                        color: formhintcolor,
                        fontWeight: FontWeight.w500)),
                border: const OutlineInputBorder(
                  gapPadding: 4,
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          color: const Color(0xffD9D9D9).withOpacity(0.1),
          height: 7.00.hp, width: 95.00.wp,
          // padding: const EdgeInsets.only(
          //   left: 20,
          //   right: 20,
          // ),
          child: TextFormField(
            controller: profileController.companyName,
            style: GoogleFonts.jost(
                textStyle: TextStyle(
                    fontSize: 10.00.sp,
                    color: forminputcolor,
                    fontWeight: FontWeight.w500)),
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
                suffixIcon: Icon(
                  Icons.email,
                  color: appcolor,
                ),
                // hintText: 'Company Name',
                label: Text('E-mail'),
                labelStyle: subtitleStyleappcolor,
                contentPadding: const EdgeInsets.only(left: 10),
                hintStyle: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.00.sp,
                        color: formhintcolor,
                        fontWeight: FontWeight.w500)),
                border: const OutlineInputBorder(
                  gapPadding: 4,
                )),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
