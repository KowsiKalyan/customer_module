import 'package:customermodule/all_packages.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  Stream<QuerySnapshot> messageStream =
      FirebaseFirestore.instance.collection('Messages').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: messageStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('someting went wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            primary: true,
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              QueryDocumentSnapshot qs = snapshot.data!.docs[index];
              return ChatBubble(
                clipper: ChatBubbleClipper1(type: BubbleType.sendBubble),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 20),
                backGroundColor: Colors.blue,
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    qs['message'],
                    style: orderdetails,
                  ),
                ),
              );
            },
          );
        });
  }
}
