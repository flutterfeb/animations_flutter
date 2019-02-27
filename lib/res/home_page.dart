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
  // {Hint: SizeTransition will take animation of type offsets}
  Animation<Offset> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: duration)
      ..addListener(() => setState(() {}));
    animation = Tween<Offset>(begin: Offset(0.5, 1), end: Offset(-1.5, 0))
        .chain(CurveTween(curve: Curves.elasticIn))
        .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
//TODO:[3] give the SlideTransition its properties
// TODO:[1] Time to Slide
        child: SlideTransition(
          position: animation,
          textDirection: TextDirection.rtl,
          transformHitTests: true,
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.isCompleted ? controller.reverse() : controller.forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
