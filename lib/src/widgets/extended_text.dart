import 'package:flutter/material.dart';

class ExtendedText extends StatelessWidget {
  const ExtendedText(
    this.data, {
    Key? key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.padding,
    this.decoration,
    this.width,
    this.height,
    this.margin,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
  }) : super(key: key);
  final String? data;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;
  final TextWidthBasis? textWidthBasis;

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  final double? width;
  final double? height;

  final void Function()? onTap;
  final void Function()? onDoubleTap;
  final void Function()? onLongPress;

  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    final _text = Text(
      data!,
      style: style,
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
    );
    final _container = Container(
      padding: padding,
      decoration: decoration,
      width: width,
      height: height,
      margin: margin,
      child: _text,
    );

    if (onTap != null || onDoubleTap != null || onLongPress != null) {
      return GestureDetector(
        onTap: onTap,
        onDoubleTap: onDoubleTap,
        onLongPress: onLongPress,
        behavior: HitTestBehavior.opaque,
        child: _container,
      );
    } else {
      return _container;
    }
  }
}
