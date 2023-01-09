import '../../../all_packages.dart';

class ConnectivityTech extends StatefulWidget {
  const ConnectivityTech({super.key});

  @override
  State<ConnectivityTech> createState() => _ConnectivityTechState();
}

class _ConnectivityTechState extends State<ConnectivityTech> {
  var techindex;
  var displayindex;
  var displaysizeindex;
  var displaytechindex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10.0.hp,
            width: 100.0.wp,
            child: GridView.builder(
              itemCount: 6,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      techindex = index;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        color: techindex == index ? appcolor : screenbackground,
                        border: Border.all(
                            color:
                                techindex == index ? appcolor : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '4G LTE',
                        style: orderdetails,
                      ),
                    ),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 6 / 3),
            ),
          ),
          Divider(),
          Text(
            'Display Technologies',
            style: subtitleStylebold,
          ),
          SizedBox(
            height: 10.0.hp,
            width: 100.0.wp,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      displayindex = index;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        color:
                            displayindex == index ? appcolor : screenbackground,
                        border: Border.all(
                            color: displayindex == index
                                ? appcolor
                                : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '4G LTE',
                        style: orderdetails,
                      ),
                    ),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 6 / 3),
            ),
          ),
          Divider(),
          Text(
            'Display Size',
            style: subtitleStylebold,
          ),
          SizedBox(
            height: 5.0.hp,
            width: 100.0.wp,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      displaysizeindex = index;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        color: displaysizeindex == index
                            ? appcolor
                            : screenbackground,
                        border: Border.all(
                            color: displaysizeindex == index
                                ? appcolor
                                : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        '22 in',
                        style: orderdetails,
                      ),
                    ),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 6 / 3),
            ),
          ),
          Divider(),
          Text(
            'Display Technology',
            style: subtitleStylebold,
          ),
          SizedBox(
            height: 5.0.hp,
            width: 100.0.wp,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: (() {
                    setState(() {
                      displaytechindex = index;
                    });
                  }),
                  child: Container(
                    height: 4.0.hp,
                    width: 18.0.wp,
                    decoration: BoxDecoration(
                        color: displaytechindex == index
                            ? appcolor
                            : screenbackground,
                        border: Border.all(
                            color: displaytechindex == index
                                ? appcolor
                                : formhintcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'LED',
                        style: orderdetails,
                      ),
                    ),
                  ),
                );
              }),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10,
                  childAspectRatio: 6 / 3),
            ),
          ),
        ],
      ),
    );
  }
}
