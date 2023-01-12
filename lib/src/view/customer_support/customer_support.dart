import 'package:customermodule/all_packages.dart';

import 'customer_history.dart';

class CustomerSupport extends StatefulWidget {
  const CustomerSupport({super.key});

  @override
  State<CustomerSupport> createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<CustomerSupport> {
  var index = 0;
  var selectedtyped = [
    'Url not working',
    'Product not displaying',
    'Support issue'
  ];
  var type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appcolor,
          title: Text('Customer Support'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 5),
              child: IconButton(
                icon: Icon(Icons.history),
                onPressed: () {
                  Get.to(CustomerHistoryPage());
                },
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 3.0.hp,
            ),
            Image.asset(
              'assets/img/customer.gif',
              height: 30.0.hp,
            ),
            SizedBox(
              height: 3.0.hp,
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
                        hint: Text('Selected type',
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
                        items: selectedtyped
                            .map<DropdownMenuItem<String>>((items) {
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
                        value: type,
                        onChanged: (value) {
                          setState(() {
                            type = value!;
                          });
                        },
                      ),
                    )),
              ],
            ),
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
                    hintText: 'Email',
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
                    hintText: 'Subject',
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
                    hintText: 'Description',
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
            SizedBox(
              height: 3.0.hp,
            ),
            Padding(
              padding: EdgeInsets.only(right: 4.0.wp),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 4.0.hp,
                  width: 20.0.wp,
                  decoration: BoxDecoration(
                      color: buttoncolor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Send',
                    style: buttontext,
                  )),
                ),
              ),
            )
          ],
        ));
  }
}
