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

class _MyHomePageState extends State<MyHomePage> {
  
  //TODO:[2]Declare and initialize required variables
  //Tip:better to initialize in initState
  
  double height;
  double width;
  Color color;
  BoxShape boxShape = BoxShape.rectangle;
  bool isCircle;

//  @override
//  void initState() {
//    super.initState();
//    height = 100.0;
//    width = 100.0;
//    color = Colors.blue;
//    isCircle = false;
//  }
//
  //TODO:[3] you will need a function to toggle states
//  _toggle() {
//    setState(() {
//      boxShape = isCircle ? BoxShape.circle : BoxShape.rectangle;
//      height = isCircle ? 400.0 : 100.0;
//      width = isCircle ? 400.0 : 100.0;
//      color = isCircle ? Colors.red : Colors.blue;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        //TODO:[1] AnimatedContainer and its properties
        
//        child: AnimatedContainer(
//          curve: Curves.fastOutSlowIn,
//          duration: duration,
//          width: width,
//          height: height,
//          decoration: BoxDecoration(
//            color: color,
//            shape: boxShape,with Ticker
//          ),
//        ),
      ),
      //TODO:[4] Trigger changes using FAB
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
//          isCircle = !isCircle;
//          _toggle();
        },
        tooltip: 'Animate',
        child: new Icon(Icons.play_arrow),
      ),
    );
  }
}
