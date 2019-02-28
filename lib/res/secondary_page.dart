//TODO:[3] Okay so you made the hero navigate but where is the page where it will 
//         navigate to, you don't wanna fall in red sea of yellow errors.

//import 'package:flutter/material.dart';
//import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//
//class SecondaryPage extends StatelessWidget {
//  SecondaryPage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(title),
//      ),
//      body: Stack(
//        children: <Widget>[
//
//          Align(
//            alignment: Alignment.bottomLeft,
//            child: Hero(
//              tag: 'flutter logo',
//              child: FlutterLogo(
//                size: 200.0,
//              ),
//            ),
//          ),
//          Align(
//            alignment: Alignment.topRight,
//            child: Hero(
//              tag: 'some logo',
//              child: Icon(
//                MdiIcons.firebase,
//                size: 200.0,
//                color: Colors.yellow,
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
