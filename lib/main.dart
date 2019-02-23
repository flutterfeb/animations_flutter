import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

const Duration duration = Duration(
  milliseconds: 500,
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(title: 'Animations'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  double height;
  double width;
  Color color;
  BoxShape boxShape = BoxShape.rectangle;
  bool isCircle;

  @override
  void initState() {
    super.initState();
    height = 100.0;
    width = 100.0;
    color = Colors.blue;
    isCircle = false;
  }

  _toggle() {
    setState(() {
      boxShape = isCircle ? BoxShape.circle : BoxShape.rectangle;
      height = isCircle ? 400.0 : 100.0;
      width = isCircle ? 400.0 : 100.0;
      color = isCircle ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: AnimatedContainer(
          curve: Curves.decelerate,
          duration: duration,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            shape: boxShape,
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          isCircle = !isCircle;
          _toggle();
        },
        tooltip: 'Animate',
        child: new Icon(Icons.add),
      ),
    );
  }
}
