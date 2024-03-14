import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_view_demo/pages/apps.dart';
import 'package:page_view_demo/pages/call.dart';
import 'package:page_view_demo/pages/message.dart';

class Homepage_Demo extends StatefulWidget {
  const Homepage_Demo({super.key});

  @override
  State<Homepage_Demo> createState() => _Homepage_DemoState();
}

class _Homepage_DemoState extends State<Homepage_Demo> {
  PageController ? pageController;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
         pageController = PageController(
           initialPage: currentIndex,
         );

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [

              Expanded(child: PageView(
                controller: pageController,
                children: [
                  Apps_Demo(),
                  Call_Demo(),
                  Message_Demo(),
                ],
              )),
              Container(
                height: 50,
                color: Colors.blue.withOpacity(.4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      color: Colors.orangeAccent,
                      onPressed: (){
                        setState(() {
                          pageController!.jumpToPage(0);
                        });
                      },child: Text("Apps"),),
                    MaterialButton(
                      color: Colors.orangeAccent,
                      onPressed: (){
                        setState(() {
                          pageController!.jumpToPage(1);
                        });
                      },child: Text("Call"),),
                    MaterialButton(
                      color: Colors.orangeAccent,
                      onPressed: (){
                        setState(() {
                          pageController!.jumpToPage(2);
                        });
                      },child: Text("Message"),)
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
