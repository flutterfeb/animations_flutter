import 'package:animations/res/secondary_page.dart';
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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      //TODO:[1] Let me be your Hero, you can call me now
    //  body: new  Hero(
    //          tag: 'flutter logo',
    //          child: FlutterLogo(
    //            size: 100.0,
    //          ),
    //        ),
      //TODO:[2] Your hero needs to fly, navigate to another screen
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
        //  Navigator.of(context).push(
        //    MaterialPageRoute(
        //      builder: (BuildContext context) {
        //        return SecondaryPage(
        //          title: 'Secondary Page',
        //        );
        //      },
        //    ),
        //  );
        },
        tooltip: 'Animate',
        child: new Icon(Icons.play_arrow),
      ),
    );
  }
}
