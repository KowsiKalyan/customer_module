import 'package:customermodule/src/controller/delivery_controller.dart';

import '../../../all_packages.dart';

class CreateDeliveryAddress extends StatefulWidget {
  const CreateDeliveryAddress({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateDeliveryAddress> createState() => _CreateDeliveryAddressState();
}

class _CreateDeliveryAddressState extends State<CreateDeliveryAddress> {
  var reason;

  TextEditingController mobile = TextEditingController();
  DeliveryController deliveryController = Get.put(DeliveryController());
  var state = [
    'TamilNadu',
    'Pondicherry',
    'Andhra pradesh',
    'Himachal Pradesh'
  ];
  var selectstate;
  var selectcity;
  var selectarea;
  var selectcountry;
  var city = [
    'Trichy',
    'Covai',
    'Pondicherry',
    'Cuddalore',
  ];
  var area = [
    'Ariyankkuppam',
    'Thavalakuppam',
    'Lawspet',
    'Ig Square',
  ];
  var country = [
    'India',
    'USA',
    'UK',
    'Russia',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: appcolor,
        title: Text(
          'Delivery Address',
          style: apptitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 3.0.hp,
            ),
            Container(
              height: 6.00.hp,
              width: 90.00.wp,
              decoration: BoxDecoration(
                  color: screenbackground,
                  borderRadius: BorderRadius.circular(5.0)),
              child: TextFormField(
                controller: deliveryController.userName,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.00.sp,
                        color: forminputcolor,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: toptitlecolor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: const Color(0xffC6C6C6).withOpacity(0.5),
                          width: 1),
                    ),
                    fillColor: const Color(0xffC6C6C6),
                    hintText: 'Name',
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
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 6.00.hp,
              width: 90.00.wp,
              decoration: BoxDecoration(
                  color: screenbackground,
                  borderRadius: BorderRadius.circular(5.0)),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                controller: deliveryController.mobileNumber,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.00.sp,
                        color: forminputcolor,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: toptitlecolor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: const Color(0xffC6C6C6).withOpacity(0.5),
                          width: 1),
                    ),
                    fillColor: const Color(0xffC6C6C6),
                    hintText: 'Mobile Number',
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
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 6.00.hp,
              width: 90.00.wp,
              decoration: BoxDecoration(
                  color: screenbackground,
                  borderRadius: BorderRadius.circular(5.0)),
              child: TextFormField(
                controller: deliveryController.address,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.00.sp,
                        color: forminputcolor,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: toptitlecolor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: const Color(0xffC6C6C6).withOpacity(0.5),
                          width: 1),
                    ),
                    fillColor: const Color(0xffC6C6C6),
                    hintText: 'Address',
                    suffixIcon: Icon(
                      Icons.gps_fixed_rounded,
                      color: orange,
                    ),
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
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 6.00.hp,
                    width: 90.00.wp,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: screenbackground,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xFFECE9E9),
                        width: MediaQuery.of(context).size.height * 0.001,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: forminputcolor,
                                fontWeight: FontWeight.w500)),
                        hint: Text('Select State',
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 10.00.sp,
                                    color: toptitlecolor,
                                    fontWeight: FontWeight.w500))),
                        // onChanged: (String? newValue) async {
                        //   setState(() {
                        //     selectstate = newValue.toString();
                        //   });
                        // },
                        icon: Image.asset(
                          'assets/images/arrow.png',
                          color: const Color(0xFF737070),
                          height: 20,
                          width: 20,
                        ),
                        items: state.map<DropdownMenuItem<String>>((items) {
                          return DropdownMenuItem<String>(
                            value: items,
                            child: Container(
                                margin:
                                    const EdgeInsets.only(left: 0, right: 4),
                                child: Text(items.toString(),
                                    style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                            fontSize: 10.00.sp,
                                            color: forminputcolor,
                                            fontWeight: FontWeight.w500)))),
                          );
                        }).toList(),
                        value: selectstate,
                        onChanged: (value) {
                          setState(() {
                            selectstate = value!;
                          });
                        },
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 6.00.hp,
                    width: 90.00.wp,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: screenbackground,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xFFECE9E9),
                        width: MediaQuery.of(context).size.height * 0.001,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectcity,
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: forminputcolor,
                                fontWeight: FontWeight.w500)),
                        hint: Text('Select City',
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 10.00.sp,
                                    color: toptitlecolor,
                                    fontWeight: FontWeight.w500))),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectcity = newValue!;
                          });
                        },
                        icon: Image.asset(
                          'assets/images/arrow.png',
                          color: const Color(0xFF737070),
                          height: 20,
                          width: 20,
                        ),
                        items: city.map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: value.toString(),
                            child: Container(
                                margin:
                                    const EdgeInsets.only(left: 0, right: 4),
                                child: Text(value.toString(),
                                    style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                            fontSize: 10.00.sp,
                                            color: forminputcolor,
                                            fontWeight: FontWeight.w500)))),
                          );
                        }).toList(),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 6.00.hp,
                    width: 90.00.wp,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: screenbackground,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xFFECE9E9),
                        width: MediaQuery.of(context).size.height * 0.001,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectarea,
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: forminputcolor,
                                fontWeight: FontWeight.w500)),
                        hint: Text('Select Area',
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 10.00.sp,
                                    color: toptitlecolor,
                                    fontWeight: FontWeight.w500))),
                        onChanged: (String? newValue) async {
                          setState(() {
                            selectarea = newValue!;
                          });
                        },
                        icon: Image.asset(
                          'assets/images/arrow.png',
                          color: const Color(0xFF737070),
                          height: 20,
                          width: 20,
                        ),
                        items: area.map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: value.toString(),
                            child: Container(
                                margin:
                                    const EdgeInsets.only(left: 0, right: 4),
                                child: Text(value,
                                    style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                            fontSize: 10.00.sp,
                                            color: forminputcolor,
                                            fontWeight: FontWeight.w500)))),
                          );
                        }).toList(),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 6.00.hp,
              width: 90.00.wp,
              decoration: BoxDecoration(
                  color: screenbackground,
                  borderRadius: BorderRadius.circular(5.0)),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: deliveryController.pincode,
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 10.00.sp,
                        color: forminputcolor,
                        fontWeight: FontWeight.w500)),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide:
                          const BorderSide(color: toptitlecolor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: const Color(0xffC6C6C6).withOpacity(0.5),
                          width: 1),
                    ),
                    fillColor: const Color(0xffC6C6C6),
                    hintText: 'Pincode',
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
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 6.00.hp,
                    width: 90.00.wp,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: screenbackground,
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: const Color(0xFFECE9E9),
                        width: MediaQuery.of(context).size.height * 0.001,
                      ),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectcountry,
                        style: GoogleFonts.jost(
                            textStyle: TextStyle(
                                fontSize: 10.00.sp,
                                color: forminputcolor,
                                fontWeight: FontWeight.w500)),
                        hint: Text('Select Country',
                            style: GoogleFonts.jost(
                                textStyle: TextStyle(
                                    fontSize: 10.00.sp,
                                    color: toptitlecolor,
                                    fontWeight: FontWeight.w500))),
                        onChanged: (String? newValue) async {
                          setState(() {
                            selectcountry = newValue!;
                          });
                        },
                        icon: Image.asset(
                          'assets/images/arrow.png',
                          color: const Color(0xFF737070),
                          height: 20,
                          width: 20,
                        ),
                        items: country.map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: value.toString(),
                            child: Container(
                                margin:
                                    const EdgeInsets.only(left: 0, right: 4),
                                child: Text(value,
                                    style: GoogleFonts.jost(
                                        textStyle: TextStyle(
                                            fontSize: 10.00.sp,
                                            color: forminputcolor,
                                            fontWeight: FontWeight.w500)))),
                          );
                        }).toList(),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 3.0.hp,
            ),
            InkWell(
              onTap: (() {
                Get.back();
              }),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                    height: 5.0.hp,
                    width: 60.0.wp,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: buttoncolor),
                    child: Center(
                      child: Text(
                        'submit',
                        style: buttontext,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
