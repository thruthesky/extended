import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// [child] can be used over [url].
class GradientCard extends StatelessWidget {
  const GradientCard({
    this.url,
    this.child,
    required this.title,
    this.onTap,
    this.onLongPress,
    this.onDoubleTap,
    this.titleStyle = const TextStyle(color: Colors.white),
    this.titleMaxLines = 1,
    this.borderRadius = 8.0,
    this.titleWidthFactor = 0.7,
    this.titleAlignment = TextAlign.center,
    this.gradientColors = const [Colors.black, Colors.transparent],
    this.textOverflow = TextOverflow.fade,
    this.overlays,
    this.placeholder,
    this.errorWidget,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    Key? key,
  })  : assert(url != null || child != null),
        super(key: key);

  final Widget Function(BuildContext, String)? placeholder;
  final Widget Function(BuildContext, String, dynamic)? errorWidget;

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final VoidCallback? onDoubleTap;

  final double borderRadius;

  final String? url;
  final Widget? child;
  final String title;
  final int titleMaxLines;
  final TextStyle titleStyle;
  final TextOverflow textOverflow;

  final double titleWidthFactor;
  final TextAlign titleAlignment;
  final List<Color> gradientColors;

  final List<Positioned>? overlays;

  final double? height;
  final double? width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    Widget? _child = child;
    _child ??= CachedNetworkImage(
      imageUrl: url!,
      fit: fit,
      width: width,
      height: height,
      placeholder: placeholder,
      errorWidget: errorWidget,
    );

    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      onDoubleTap: onDoubleTap,
      behavior: HitTestBehavior.opaque,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Stack(
          alignment: Alignment.center,
          children: [
            _child,
            Positioned(
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: gradientColors,
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter),
                ),
                child: FractionallySizedBox(
                  widthFactor: titleWidthFactor,
                  child: Text(
                    title,
                    maxLines: titleMaxLines,
                    textAlign: titleAlignment,
                    overflow: textOverflow,
                    style: titleStyle,
                  ),
                ),
              ),
              left: 0,
              right: 0,
              bottom: 0,
            ),
            if (overlays != null) ...overlays!,
          ],
        ),
      ),
    );
  }
}
