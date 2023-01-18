import '../../../all_packages.dart';

class AllSellersScreen extends StatefulWidget {
  const AllSellersScreen({super.key});

  @override
  State<AllSellersScreen> createState() => _AllSellersScreenState();
}

class _AllSellersScreenState extends State<AllSellersScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 1,
            child: Container(
              height: 10.0.hp,
              width: 100.0.wp,
              color: screenbackground,
              child: ListTile(
                title: Text(
                  'Store_Name',
                  style: subtitleStylebold,
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: amber,
                    ),
                    Text(
                      '4.00',
                      style: orderdetails,
                    ),
                    SizedBox(
                      width: 10.0.wp,
                    ),
                    Text(
                      '|',
                      style: orderdetails,
                    ),
                    Text(
                      '4 Products',
                      style: orderdetails,
                    )
                  ],
                ),
                leading: Image.asset(
                  'assets/images/dress1.jpg',
                  height: 13.0.hp,
                ),
                trailing: Container(
                  height: 4.0.hp,
                  width: 22.0.wp,
                  decoration: BoxDecoration(
                      color: appcolor, borderRadius: BorderRadius.circular(5)),
                  child: InkWell(
                    onTap: (() {
                      Get.to(StorenameDetails());
                    }),
                    child: Center(
                      child: Text(
                        'View Store',
                        style: buttontext,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
