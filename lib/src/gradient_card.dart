import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  const GradientCard({
    required this.image,
    required this.title,
    this.onTap,
    this.titleStyle = const TextStyle(color: Colors.white),
    this.titleMaxLines = 1,
    this.borderRadius = 8.0,
    this.titleWidthFactor = 0.7,
    this.titleAlignment = TextAlign.center,
    this.gradientColors = const [Colors.black, Colors.transparent],
    this.textOverflow = TextOverflow.fade,
    this.overlays,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onTap;

  final double borderRadius;

  final Widget image;
  final String title;
  final int titleMaxLines;
  final TextStyle titleStyle;
  final TextOverflow textOverflow;

  final double titleWidthFactor;
  final TextAlign titleAlignment;
  final List<Color> gradientColors;

  final List<Positioned>? overlays;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Stack(
          children: [
            image,
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
                  child: Text(title,
                      maxLines: titleMaxLines,
                      textAlign: titleAlignment,
                      overflow: textOverflow,
                      style: titleStyle),
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
