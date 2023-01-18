import 'package:customermodule/all_packages.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  var selectedindex;
  bool? indexselected;
  final List quotes = [
    {
      "answer":
          "You cannot change the delivery address once the order is placed. you can cancel the previous order and place a new one",
      "question": "Can I change the delivery address of my address?",
    },
    {
      "answer": "Minimum order is Rs.1000",
      "question": "What is the minimum order value ?"
    },
  ];
  Widget _buildExpandableTile(item) {
    return ExpansionTile(
      textColor: appcolor,
      iconColor: appcolor,
      title: Text(
        item['question'],
        style: subtitleStyle,
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            item['answer'],
            style: orderdetails,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: appcolor,
          title: Text(
            'FAQS',
            style: apptitle,
          ),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: quotes.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildExpandableTile(quotes[index]);
          },
        ));
  }
}
