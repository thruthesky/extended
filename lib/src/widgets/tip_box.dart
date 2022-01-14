import 'package:flutter/material.dart';
import './extended_list_tile.dart';
import './button.dart';

/// It is a copy style widget that work like [ListTile] material widget.
/// This widget gives more flexible options on leading sizes and margin, paddings.
class TipBox extends StatelessWidget {
  const TipBox({
    this.leading,
    this.trailing,
    this.trailingText = 'Tap here',
    this.title,
    this.subtitle,
    this.spacing = 12,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    this.width,
    this.height,
    this.padding = const EdgeInsets.all(8),
    this.margin,
    this.color,
    this.borderColor = const Color(0xFFE4E4E4),
    this.borderRadius = 5.0,
    this.borderWidth = 1.0,
    Key? key,
  }) : super(key: key);

  final Widget? leading;
  final Widget? trailing;
  final String trailingText;
  final Widget? title;
  final Widget? subtitle;
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
    return ExtendedListTile(
      leading: leading,
      trailing: trailing ??
          Button(
            child: Text(
              trailingText,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            backgroundColor: const Color(0xFF0076EC),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            radius: 5.0,
          ),
      title: title,
      subtitle: subtitle,
      spacing: spacing,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      color: color,
      borderRadius: borderRadius,
      borderColor: borderColor,
      borderWidth: borderWidth,
    );
  }
}
