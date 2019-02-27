import 'package:flutter/material.dart';

const Duration duration = Duration(
  milliseconds: 700,
);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  //TODO: [2] Declare and initialize animation and controller
  // {Hint: SizeTransition will take animation of type double to change the sizeFactor}
//  Animation<double> animation;
//  AnimationController controller;
//
//  @override
//  void initState() {
//    super.initState();
//
//    controller = AnimationController(vsync: this, duration: duration)
//      ..addListener(() => setState(() {}));
////Tip: you may also give this a try
////    animation = CurvedAnimation(parent: controller, curve: Curves.easeOut);
//// Tip: not a good option to use it as it will go from 0-1 unless if you wish to tweak the begin & end
//    animation = Tween<double>(begin: 0.2, end: 0.5).animate(controller);
//  }
+
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
//TODO:[3] give the SizeTransition its properties
// TODO:[1] Time to Size
//        child: SizeTransition(
////          axis: Axis.vertical,
////          axisAlignment: 0,
////          sizeFactor: animation,
////          child: FlutterLogo(
////            size: 200,
////          ),
//        ),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
//          controller.isCompleted ? controller.reverse() : controller.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
