import 'package:customermodule/all_packages.dart';

class ProductAboutUi extends StatefulWidget {
  const ProductAboutUi({super.key});

  @override
  State<ProductAboutUi> createState() => _ProductAboutUiState();
}

class _ProductAboutUiState extends State<ProductAboutUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: listtitle,
          ),
          SizedBox(
            height: 1.00.hp,
          ),
          Text(
            '''T-shirts have become one of the most common yet stylish choices of clothing for teenagers. As tees are simple to wear, comfortable, and easy to wash...
          ''',
            style: subtitleStyle,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
