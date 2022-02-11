import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

/// Helper method to use the "Get.arguments" method easier.
///
/// Use this method to get the route argument passed over Get route
///
/// Example
/// ```dart
/// String a = getArg('varName', 'defaultValue');
/// int i = getArg<int>('index', 0);
/// ```
///
/// The default value is null if not given.
T getArg<T>(String name, [dynamic defaultValue]) {
  final arguments = ModalRoute.of(ExtendedService.instance.navigatorKey!.currentContext!)!
      .settings
      .arguments as Map<String, dynamic>;
  return arguments[name] == null ? defaultValue : arguments[name] as T;
}
