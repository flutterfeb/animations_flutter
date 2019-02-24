import 'package:flutter/material.dart';


class SecondaryPage extends StatelessWidget {
  SecondaryPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
      ),
    );
  }
}
