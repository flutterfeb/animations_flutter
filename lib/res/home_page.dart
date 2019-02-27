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
  //TODO:[1.2] Declare required variables
//  bool isPrevious = true;

  @override
  Widget build(BuildContext context) {
    //TODO:[1.2]
//    double height = MediaQuery.of(context).size.height;
//    double width = MediaQuery.of(context).size.width;

    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Stack(
        //TODO:[1.1] AnimatedPositioned and the properties
        children: <Widget>[
//          AnimatedPositioned(
//            child: Container(
//              color: Colors.blue,
//            ),
//            duration: duration,
//            height: isPrevious ? 300 : 100,
//            //child's height
//            width: isPrevious ? 50 : 200,
//            //child's width
//            top: isPrevious ? height * 0.5 : height * 0.01,
//            left: isPrevious ? width * 0.05 : width * 0.4,
//          ),

          //OR
          //TODO:[3.1] AnimatedPositioned of another kind and the properties
//          AnimatedPositioned.fromRect(
//              duration: duration,
//              child: Container(
//                color: Colors.yellow,
//              ),
//              rect: Rect.fromLTWH(
//                isPrevious ? width * 0.4 : width * 0.05,
//                //left
//                isPrevious ? height * 0.01 : height * 0.5,
//                //top
//                isPrevious ? 200 : 50,
//                //width
//                isPrevious ? 100 : 300,
//                //height
//              )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO:[2] change what's needed to be and set the state
//          isPrevious = !isPrevious;
//          setState(() {});
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
