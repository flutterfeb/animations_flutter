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
  // {Hint: RotationTransition will take animation of type double for the turns}
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: duration)
      ..addListener(() => setState(() {}));
//Tip: you may also give this
//    animation = CurvedAnimation(parent: controller, curve: Curves.elasticOut);
    animation = Tween<double>(begin: -0.1, end: 0.1).animate(controller);
    controller.forward();
    controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
//TODO:[3] give the RotationTransition its turns, child and alignment
// TODO:[1] Have your RotationTransition
        child: Stack(
          children: <Widget>[
            RotationTransition(
              turns: animation,
              alignment: Alignment(0, -1),
              child: Container(
                height: 300,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: 2,
                        color: Colors.black,
                      ),
                    ),
                    FlutterLogo(
                      size: 150,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
