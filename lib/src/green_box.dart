import 'package:flutter/material.dart';

class GreenBox extends StatelessWidget {
  const GreenBox({this.width = 100.0, this.height = 100.0, Key? key}) : super(key: key);

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: width,
      height: height,
    );
  }
}
