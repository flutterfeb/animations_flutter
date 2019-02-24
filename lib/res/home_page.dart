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
//  bool isFirstVisible;
//
//  @override
//  void initState() {
//    super.initState();
//
//    isFirstVisible = true;
//  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
//        child: AnimatedCrossFade(
////          layoutBuilder: (Widget firstChild, Key firstChildKey, Widget secondChild, Key secondChildKey,){
////
////            return Stack(
////              alignment: Alignment.center,
////              children: <Widget>[
////                firstChild,
////                secondChild,
////              ],
////            );
////
////          },
//            firstChild: FlutterLogo(
//              size: 100.0,
//            ),
//            secondChild: Container(
//              color: Colors.purple,
//              height: 200.0,
//              width: 150.0,
//            ),
//            crossFadeState: isFirstVisible
//                ? CrossFadeState.showFirst
//                : CrossFadeState.showSecond,
//            duration: duration,
//        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
//          isFirstVisible = !isFirstVisible;
//          setState(() {});
        },
        tooltip: 'Animate',
        child: new Icon(Icons.add),
      ),
    );
  }
}
