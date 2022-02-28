import 'package:flutter/material.dart';

/// Give padding vertically and horizontally.
class PagePadding extends StatelessWidget {
  const PagePadding({
    this.horizontal = 16.0,
    this.vertical = 0.0,
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    Key? key,
  }) : super(key: key);

  final double horizontal;
  final double vertical;
  final List<Widget> children;

  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: children,
      ),
    );
  }
}
