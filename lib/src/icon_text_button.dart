import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    required this.icon,
    required this.text,
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Widget icon;
  final Widget text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ExtendedColumn(onTap: onTap, children: [
      icon,
      text,
    ]);
  }
}
