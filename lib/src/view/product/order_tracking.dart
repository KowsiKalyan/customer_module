import 'package:customermodule/all_packages.dart';
import 'package:customermodule/src/view/product/order_tracking_packages.dart';

class OrderTrackingUi extends StatefulWidget {
  const OrderTrackingUi({Key? key}) : super(key: key);

  @override
  State<OrderTrackingUi> createState() => _OrderTrackingUiState();
}

class _OrderTrackingUiState extends State<OrderTrackingUi> {
  ///this TextDto present in a package add data in this dto and set in a list.

  List<TextDto> orderList = [
    TextDto("Your order has been placed", "Fri, 25th Mar '22 - 10:47pm"),
    TextDto("Seller ha processed your order", "Sun, 27th Mar '22 - 10:19am"),
    TextDto("Your item has been picked up by courier partner.",
        "Tue, 29th Mar '22 - 5:00pm"),
  ];

  List<TextDto> shippedList = [
    TextDto("Your order has been shipped", "Tue, 29th Mar '22 - 5:04pm"),
    TextDto("Your item has been received in the nearest hub to you.", null),
  ];

  List<TextDto> outOfDeliveryList = [
    TextDto("Your order is out for delivery", "Thu, 31th Mar '22 - 2:27pm"),
  ];

  List<TextDto> deliveredList = [
    TextDto("Your order has been delivered", "Thu, 31th Mar '22 - 3:58pm"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrderTracker(
        status: Status.delivered,
        activeColor: Colors.green,
        inActiveColor: Colors.grey[300],
        orderTitleAndDateList: orderList,
        shippedTitleAndDateList: shippedList,
        outOfDeliveryTitleAndDateList: outOfDeliveryList,
        deliveredTitleAndDateList: deliveredList,
      ),
    );
  }
}
