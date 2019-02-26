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
  // {Hint: PositionedTransition will take animation of type RelativeRect and should have Stack as a parent}
  Animation<RelativeRect> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: duration)
      ..addListener(() => setState(() {}));

    animation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 300, 300),
      end: RelativeRect.fromLTRB(30, 30, 30, 30),
    ).chain(CurveTween(curve: Curves.elasticInOut)).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
//TODO:[3] give the PositionedTransition its rect and child
        //TODO:[1] Have your PositionedTransition
        child: Stack(
          children: <Widget>[
            PositionedTransition(
              rect: animation,
              child: FlutterLogo(),
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          controller.isCompleted ? controller.reverse() : controller.forward();
        },
        tooltip: 'Animate',
        child: new Icon(Icons.play_arrow),
      ),
    );
  }
}
