import 'package:animations/res/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new MyHomePage(title: 'Animations'),
    );
  }
}

