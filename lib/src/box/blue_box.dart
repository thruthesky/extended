import 'package:extended/src/box/box.dart';
import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget {
  const BlueBox({this.width = 100.0, this.height = 100.0, Key? key})
      : super(key: key);

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Box(color: Colors.blue, width: width, height: height);
  }
}
