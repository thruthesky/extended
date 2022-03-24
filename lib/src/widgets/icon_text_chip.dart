import 'package:flutter/material.dart';

class IconTextChip extends StatelessWidget {
  const IconTextChip({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.color = Colors.blue,
  }) : super(key: key);
  final Widget icon;
  final Widget text;
  final Function onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.only(left: 8, right: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 4),
            text,
          ],
        ),
      ),
    );
  }
}
