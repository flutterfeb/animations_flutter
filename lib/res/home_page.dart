
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
  // {Hint: DecoratedBoxTransition will take animation of type Decoration}
//  Animation<Decoration> animation;
//  AnimationController controller;

//  @override
//  void initState() {
//    super.initState();
//
//    controller = AnimationController(vsync: this, duration: duration)
//      ..addListener(() => setState(() {}));
//    animation = DecorationTween(
//            begin: BoxDecoration(
//              color: Colors.white,
//              borderRadius: BorderRadius.circular(30),
//              boxShadow: <BoxShadow>[
//                BoxShadow(color: Colors.black54, blurRadius: 30, spreadRadius: 15),
//                BoxShadow(color: Colors.blue, blurRadius: 15, spreadRadius: 7),
//              ],
//            ),
//            end: BoxDecoration(
//              color: Colors.white,
//              borderRadius: BorderRadius.circular(0.0),
//              boxShadow: <BoxShadow>[
//                BoxShadow(color: Colors.blue, blurRadius: 15, spreadRadius: 7),
//              ]
//            ),)
//        .animate(controller);
//  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
//TODO:[3] give the DecoratedBoxTransition its decoration and child
        //TODO:[1] Bring in the DecoratedBoxTransition
//        child: DecoratedBoxTransition(
////          position: DecorationPosition.background,
////          decoration: animation,
////          child: FlutterLogo(
////            size: 200,
////          ),
//        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
//         controller.isCompleted?controller.reverse():controller.forward();
        },
        tooltip: 'Animate',
        child: new Icon(Icons.play_arrow),
      ),
    );
  }
}
