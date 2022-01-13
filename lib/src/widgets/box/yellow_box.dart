import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

class YellowBox extends StatelessWidget {
  const YellowBox({this.width = 100.0, this.height = 100.0, Key? key})
      : super(key: key);

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Box(color: Colors.yellow, width: width, height: height);
  }
}
