import 'package:extended/extended.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

/// As it uses `SelectableLinkify`, [locale], [softWrap], [overflow], [semanticsLabel] are no longer supported as [Text] properties.
/// Properties for `SelectableLinkify` - [onOpen], [options] for link option, [linkStyle] are added
/// [onDoubleTap], [onLongPress] are not supported since the text is selectable.
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
    this.onOpen,
    this.options = const LinkifyOptions(),
    this.linkStyle,
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

  final Decoration? decoration;

  ///

  /// Style of link text

  /// Callback for tapping a link
  final LinkCallback? onOpen;

  /// linkify's options.
  final LinkifyOptions options;

  final TextStyle? linkStyle;

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (isHtml(data!)) {
      child = SelectableHtml(data: data);
    } else {
      child = SelectableLinkify(
        text: data!,
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        textWidthBasis: textWidthBasis,
        onOpen: onOpen,
        options: options,
        linkStyle: linkStyle,
      );
    }

    final _container = Container(
      padding: padding,
      decoration: decoration,
      width: width,
      height: height,
      margin: margin,
      child: child,
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: _container,
      );
    } else {
      return _container;
    }
  }
}
