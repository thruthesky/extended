import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  const Box({this.color = Colors.black, this.width = 100.0, this.height = 100.0, Key? key})
      : super(key: key);

  final Color color;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: width,
      height: height,
    );
  }
}
