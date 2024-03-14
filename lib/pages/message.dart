import 'package:flutter/cupertino.dart';

class Message_Demo extends StatelessWidget {
  const Message_Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Message",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
