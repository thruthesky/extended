import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import './spinner.dart';

/// 이미지를 캐시해서 보기
///
/// 사진을 화면에 가득 채워 나타내려면, `width: double.infinity, height: null` 로 입력하면 된다.
/// 참고, x_flutter 의 것은 외부에서 사용 불가. 대신, widgets 패키지의 것을 사용.
///
/// Example
///
/// ```dart
/// CachedImage(
///   post.authorProfilePhotoUrl,
///   borderRadius: 52,
///   width: 52,
///  height: 52,
///   errorIcon: Icon(Icons.account_circle_rounded, size: 52),
/// ),
/// ```
class CachedImage extends StatelessWidget {
  const CachedImage(
    this.url, {
    this.width = double.infinity,
    this.height,
    this.onLoadComplete,
    this.fit = BoxFit.cover,
    this.borderRadius = 0,
    this.errorIcon,
    this.errorIconSize = 24,
    this.placeholderPadding = const EdgeInsets.all(32.0),
    this.heroTag,
    Key? key,
  }) : super(key: key);
  final String url;
  final double width;
  final double? height;
  final Function? onLoadComplete;
  final BoxFit fit;
  final double borderRadius;
  final Widget? errorIcon;
  final double errorIconSize;
  final EdgeInsets placeholderPadding;
  final String? heroTag;
  @override
  Widget build(BuildContext context) {
    // print('cache_image url; $url');
    if (url == '') {
      if (errorIcon != null) {
        return errorIcon!;
      } else {
        return Center(
          child: Icon(
            Icons.error,
            size: errorIconSize,
          ),
        );
      }
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: CachedNetworkImage(
        imageBuilder: (context, provider) {
          // execute your onLoad code here
          // print("Image has been loaded!");
          if (onLoadComplete != null) {
            Timer(const Duration(milliseconds: 100), () => onLoadComplete!());
          }
          // Return the image that has built by hand.
          return heroWrapper(Image(image: provider, fit: fit));
        },
        imageUrl: url,
        placeholder: (context, url) => Spinner(padding: placeholderPadding),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        width: width,
        height: height,
      ),
    );
  }

  heroWrapper(Widget image) {
    if (heroTag == null) return image;
    return Hero(tag: heroTag!, child: image);
  }
}

/// CachedImage 를 Tap 할 수 있도록 해 주는 Wrapper 이다.
class CachedImageTap extends StatelessWidget {
  const CachedImageTap(
    this.url, {
    this.width = double.infinity,
    this.height,
    this.onLoadComplete,
    this.fit = BoxFit.cover,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String url;
  final double width;
  final double? height;
  final Function? onLoadComplete;
  final BoxFit fit;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CachedImage(
        url,
        width: width,
        height: height,
        onLoadComplete: onLoadComplete,
        fit: fit,
      ),
    );
  }
}
