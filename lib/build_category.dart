import 'package:flutter/material.dart';
import 'simple_animation.dart';

class BuildCategory extends StatelessWidget {
  final String text;
  final double duration;
  BuildCategory({this.text, this.duration});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: FadeAnimation(
        duration,
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200]),
            child: Center(child: Text(text, style: TextStyle(fontSize: 18))),
          ),
        ),
      ),
    );
  }
}
