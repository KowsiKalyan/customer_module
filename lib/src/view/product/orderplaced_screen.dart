import '../../../all_packages.dart';

class OrderPlacedScreen extends StatefulWidget {
  const OrderPlacedScreen({Key? key}) : super(key: key);

  @override
  State<OrderPlacedScreen> createState() => _OrderPlacedScreenState();
}

class _OrderPlacedScreenState extends State<OrderPlacedScreen> {
  AssetImage? images;

  @override
  void initState() {
    super.initState();
    images = AssetImage(
      "assets/img/deliver.gif",
    );
  }

  @override
  void dispose() {
    //  print('${widget.asset} dispose');
    images!.evict();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenbackground,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 15.00.hp,
              ),
              Container(
                height: 40.00.hp,
                width: 80.00.wp,
                decoration:
                    BoxDecoration(image: DecorationImage(image: images!)),
              ),
              SizedBox(
                height: 2.00.hp,
              ),
              Text(
                'Successfully Placed',
                style: GoogleFonts.jost(
                    textStyle: TextStyle(
                        fontSize: 15.00.sp,
                        color: appcolor,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 2.00.hp,
              ),
              InkWell(
                onTap: () {
                  Get.to(const DashboardScreen());
                },
                child: Container(
                  height: 4.0.hp,
                  width: 25.0.wp,
                  decoration: BoxDecoration(
                      color: buttoncolor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      'Go to Home',
                      style: GoogleFonts.jost(
                          textStyle: TextStyle(
                              fontSize: 11.00.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
