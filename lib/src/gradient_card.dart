import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  const GradientCard({
    required this.image,
    required this.title,
    this.onTap,
    this.titleStyle,
    this.titleMaxLines = 1,
    this.borderRadius = 8.0,
    this.titleBoxWidth = 0.7,
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
  final TextStyle? titleStyle;
  final TextOverflow textOverflow;

  final double titleBoxWidth;
  final TextAlign titleAlignment;
  final List<Color> gradientColors;

  final List<Widget>? overlays;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap != null ? onTap!() : null,
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
                    end: Alignment.topCenter,
                  ),
                ),
                child: FractionallySizedBox(
                  widthFactor: titleBoxWidth,
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
