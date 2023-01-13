import 'package:clipboard/clipboard.dart';

import '../../all_packages.dart';

class RowCustomWidget extends StatelessWidget {
  RowCustomWidget({super.key, this.rowtext1, this.rowtext2});
  String? rowtext1;
  String? rowtext2;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          rowtext1!,
          style: orderdetails,
        ),
        Text(
          rowtext2!,
          style: orderdetails,
        )
      ],
    );
  }
}

class RowCustomWidgetappcolor extends StatelessWidget {
  RowCustomWidgetappcolor({super.key, this.rowtext1, this.rowtext2});
  String? rowtext1;
  String? rowtext2;
  var message = '6568964755';
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          rowtext1!,
          style: orderdetails,
        ),
        InkWell(
            onTap: (() {
              FlutterClipboard.copy(message);
              Fluttertoast.showToast(msg: 'text copied');
            }),
            child: Text(
              rowtext2!,
              style: subtitleStyleappcolor,
            )),
      ],
    );
  }
}
