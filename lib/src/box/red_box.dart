import 'package:extended/src/box/box.dart';
import 'package:flutter/material.dart';

class RedBox extends StatelessWidget {
  const RedBox({this.width = 100.0, this.height = 100.0, Key? key}) : super(key: key);

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Box(color: Colors.red, width: width, height: height);
  }
}
