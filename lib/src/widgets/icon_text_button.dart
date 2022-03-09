import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    required this.icon,
    required this.text,
    this.spacing = 0.0,
    this.padding = const EdgeInsets.all(0),
    this.align = Axis.vertical,
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Widget icon;
  final Widget text;
  final void Function() onTap;
  final double spacing;
  final EdgeInsets padding;

  final Axis align;

  @override
  Widget build(BuildContext context) {
    if (align == Axis.vertical) {
      return ExtendedColumn(
        padding: padding,
        onTap: onTap,
        children: [
          icon,
          if (spacing != 0) SizedBox(height: spacing),
          text,
        ],
      );
    } else {
      return ExtendedRow(
        mainAxisSize: MainAxisSize.min,
        padding: padding,
        onTap: onTap,
        children: [
          icon,
          if (spacing != 0) SizedBox(width: spacing),
          text,
        ],
      );
    }
  }
}
