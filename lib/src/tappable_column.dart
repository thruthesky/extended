import 'package:flutter/material.dart';

class TappableColumn extends StatelessWidget {
  const TappableColumn({
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline, // NO DEFAULT: we don't know what the text's baseline should be
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.borderColor = const Color(0xFFaaaaaa),
    this.borderRadius = 0.0,
    this.borderWidth = 0.0,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    required this.children,
    this.flexes,
    Key? key,
  })  : assert(flexes == null || flexes.length == children.length,
            'No. of flexes must match with the No. of children'),
        super(key: key);

  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final TextBaseline?
      textBaseline; // NO DEFAULT: we don't know what the text's baseline should be

  final List<Widget> children;
  final List<int>? flexes;
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? backgroundColor;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final void Function()? onDoubleTap;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = children;
    if (flexes != null) {
      _children = _flexes(_children, flexes!);
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      onLongPress: onLongPress,
      onDoubleTap: onDoubleTap,
      child: Container(
        margin: margin,
        padding: padding,
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
            width: borderWidth,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: _children,
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: mainAxisSize,
          crossAxisAlignment: crossAxisAlignment,
          textDirection: textDirection,
          verticalDirection: verticalDirection,
          textBaseline: textBaseline,
        ),
      ),
    );
  }

  _flexes(List<Widget> children, List<int> flexes) {
    List<Widget> newChild = [];

    for (int i = 0; i < flexes.length; i++) {
      newChild.add(Expanded(
        child: children[i],
        flex: flexes[i],
      ));
    }
    return newChild;
  }
}
