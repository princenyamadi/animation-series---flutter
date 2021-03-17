import 'package:animation_series/custom_paint_animations/spinning_rings_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SpinningRings(
        size: 200,
        innerIconsSize: 3,
        outerIconsSize: 3,
        innerAnimation: Curves.bounceIn,
        outerAnimation: Curves.bounceIn,
        innerColor: Colors.orangeAccent,
        reverse: false,
        outerColor: Colors.orangeAccent,
        innerAnimationSeconds: 10,
        outerAnimationSeconds: 10,
        child: Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
          child: Icon(
            Icons.person_outline,
            color: Colors.deepOrange[200],
            size: 60,
          ),
        ),
      ),
    );
  }
}
