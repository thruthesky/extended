import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    required this.icon,
    required this.text,
    this.spacing = 0.0,
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Widget icon;
  final Widget text;
  final void Function() onTap;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return ExtendedColumn(onTap: onTap, children: [
      icon,
      if (spacing != 0) SizedBox(height: spacing),
      text,
    ]);
  }
}
