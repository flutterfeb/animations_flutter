import 'package:flutter/material.dart';

const Duration duration = Duration(
  milliseconds: 600,
);

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  //TODO: [2] Declare and initialize animation and controller
  // {Hint: FadeTransition will take animation of type double for its opacity}
//  Animation<double> animation;
//  AnimationController controller;
//
//  @override
//  void initState() {
//    super.initState();
//
//    controller = AnimationController(vsync: this, duration: duration)
//      ..addListener(() => setState(() {}));
//    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
//  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
//TODO:[3] give the FadeTransition its decoration and child
        //TODO:[1] Time for FadeTransition
//        child: FadeTransition(
////          opacity: animation,
////          child: FlutterLogo(
////            style: FlutterLogoStyle.stacked,
////            size: 200,
////          ),
//        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
//          controller.isCompleted ? controller.reverse() : controller.forward();
        },
        tooltip: 'Animate',
        child: new Icon(Icons.play_arrow),
      ),
    );
  }
}
