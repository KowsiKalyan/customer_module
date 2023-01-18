import 'package:customermodule/all_packages.dart';

class PrivacyPolicyscreen extends StatefulWidget {
  const PrivacyPolicyscreen({super.key});

  @override
  State<PrivacyPolicyscreen> createState() => _PrivacyPolicyscreenState();
}

class _PrivacyPolicyscreenState extends State<PrivacyPolicyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appcolor,
        title: Text(
          'Privacy Policy',
          style: apptitle,
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '''1. CSHOP – The Story Focused About Us Page,''',
            style: subtitleStyleappcolor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            '''CHSOP is an example of a company that nails its About Us page design while doing a great job at telling the world its story that tells the world their story. Their page shows how important it is for them to talk about their mission to help people start, run, and grow a business. The company prides itself in making ecommerce easier for everyone. Also, it paints a picture of the future for Shopify by mentioning that they’re building a 100-year company by investing in their people and the planet.''',
            style: orderdetails,
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '''2. CSHOP – The Story Focused About Us Page,''',
            style: subtitleStyleappcolor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            '''CHSOP is an example of a company that nails its About Us page design while doing a great job at telling the world its story that tells the world their story. Their page shows how important it is for them to talk about their mission to help people start, run, and grow a business. The company prides itself in making ecommerce easier for everyone. Also, it paints a picture of the future for Shopify by mentioning that they’re building a 100-year company by investing in their people and the planet.''',
            style: orderdetails,
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '''3. CSHOP – The Story Focused About Us Page,''',
            style: subtitleStyleappcolor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            '''CHSOP is an example of a company that nails its About Us page design while doing a great job at telling the world its story that tells the world their story. Their page shows how important it is for them to talk about their mission to help people start, run, and grow a business. The company prides itself in making ecommerce easier for everyone. Also, it paints a picture of the future for Shopify by mentioning that they’re building a 100-year company by investing in their people and the planet.''',
            style: orderdetails,
            textAlign: TextAlign.justify,
          ),
        ),
      ]),
    );
  }
}
