import 'package:flutter/material.dart';

/// It is a copy style widget that work like [ListTile] material widget.
/// This widget gives more flexible options on leading sizes and margin, paddings.
class ExtendedListTile extends StatelessWidget {
  const ExtendedListTile({
    required this.leading,
    required this.title,
    required this.subtitle,
    this.spacing = 12,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.color,
    this.borderColor = const Color(0xFFFFFFFF),
    this.borderRadius = 0.0,
    this.borderWidth = 0.0,
    Key? key,
  }) : super(key: key);

  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final double spacing;
  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final VoidCallback? onLongPress;

  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      behavior: HitTestBehavior.opaque,
      child: Container(
        margin: margin,
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: borderColor,
            width: borderWidth,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            leading,
            SizedBox(width: spacing),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title,
                  subtitle,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
