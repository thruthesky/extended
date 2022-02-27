import 'package:extended/extended.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

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
    this.onLinkTap,
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

  /// Callback for tapping a link
  final Function(String)? onOpen;

  /// linkify's options.
  final LinkifyOptions options;

  /// Style of link text
  final TextStyle? linkStyle;

  /// A function that defines what to do when a link is tapped
  final OnTap? onLinkTap;

  _onLink(link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (isHtml(data!)) {
      child = SelectableHtml(
        data: data!,
        onLinkTap: (text, context, data, element) {
          if (onOpen != null) {
            onOpen!(text!);
          } else {
            _onLink(text);
          }
        },
      );
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
        onOpen: (link) {
          if (onOpen != null) {
            onOpen!(link.url);
          } else {
            _onLink(link.url);
          }
        },
        options: options,
        linkStyle: linkStyle,
        onTap: onTap,
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
