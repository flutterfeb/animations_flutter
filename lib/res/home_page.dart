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

//  bool isBefore = true;
//
//  TextStyle beforeStyle = TextStyle(
//    color: Colors.black,
//    fontSize: 40,
//    fontWeight: FontWeight.bold,
//  );
//  TextStyle afterStyle = TextStyle(
//    color: Colors.blue,
//    fontSize: 50,
//    fontWeight: FontWeight.w100,
//  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      //TODO:[1] AnimatedDefaultTextStyle and set its property
      body: Center(
//        child: AnimatedDefaultTextStyle(
//          child: Text('CookyTech'),
//          style: isBefore ? beforeStyle : afterStyle,
//          duration: duration,
//          curve: Curves.linear, <-you don't need it actually
//        ),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO:[3] change the considerate variable(s) and set state
//          isBefore = !isBefore;
//          setState(() {});
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
