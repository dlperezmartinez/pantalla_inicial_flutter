import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerPageState extends StatefulWidget {
  @override
  State<AnimatedContainerPageState> createState() =>
      _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPageState> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.amber;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
    );
  }
}
