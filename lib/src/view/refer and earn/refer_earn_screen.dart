import 'package:clipboard/clipboard.dart';
import 'package:customermodule/all_packages.dart';
import 'package:flutter_share/flutter_share.dart';

class ReferEarnScreen extends StatefulWidget {
  const ReferEarnScreen({super.key});

  @override
  State<ReferEarnScreen> createState() => _ReferEarnScreenState();
}

class _ReferEarnScreenState extends State<ReferEarnScreen> {
  String message = 'pp0P5FVJ';
  Future share() async {
    await FlutterShare.share(
        title: 'cShop Multi',
        text: 'Refer Code :pp0P5FVJ',
        linkUrl:
            'Android : https://play.google.com/store/apps/details?id=cShop.multivendor.customer',
        chooserTitle: 'Example Chooser Title');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolor,
        title: Text(
          'Refer and Earn',
          style: apptitle,
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/refer.gif',
            // height: 40.0.hp,
            // width: 50.0.hp,
          ),
          SizedBox(
            height: 2.0.hp,
          ),
          Text(
            'Refer and Earn',
            style: toptitleStyle,
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              'Invite your friends to join and get the reward as soon as your friend first order placed',
              style: formhintstyle,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 2.0.hp,
          ),
          Text(
            'Your Referrel Code',
            style: toptitleStyle,
          ),
          SizedBox(
            height: 2.0.hp,
          ),
          Container(
            height: 4.0.hp,
            width: 30.0.wp,
            decoration: BoxDecoration(
                border: Border.all(color: appcolor),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                message.toString(),
                style: subtitleStyleappcolor,
              ),
            ),
          ),
          SizedBox(
            height: 1.0.hp,
          ),
          TextButton(
              onPressed: (() {
                FlutterClipboard.copy(message);
                Fluttertoast.showToast(msg: 'text copied');
              }),
              child: Text('Text to copy')),
          SizedBox(
            height: 1.0.hp,
          ),
          InkWell(
            onTap: (() {
              share();
            }),
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                height: 5.0.hp,
                width: 80.0.wp,
                decoration: BoxDecoration(
                    color: appcolor, borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'Share',
                    style: apptitle,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
