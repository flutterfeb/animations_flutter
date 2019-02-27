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
  //TODO:[2] Declare required variables
//  bool isOpaque = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: Center(
          //TODO:[1] AnimatedOpacity and the properties
//        child: AnimatedOpacity(
//          opacity: isOpaque ? 1.0 : 0.4,
//          duration: duration,
//          child: Text(
//            'CookyTech',
//            style: TextStyle(
//              fontWeight: FontWeight.bold,
//              fontSize: 20,
//            ),
//          ),
//        ),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO:[3] change what's needed to be and set the state
//          isOpaque = !isOpaque;
//          setState(() {});
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
