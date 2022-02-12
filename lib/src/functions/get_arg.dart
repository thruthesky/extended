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
@Deprecated('Do not use getArg() anymore.')
T getArg<T>(BuildContext context, String name, [dynamic defaultValue]) {
  // print(ExtendedService.instance.navigatorKey);
  // print(ExtendedService.instance.navigatorKey!.currentState!.overlay!.context);

  // final context = ExtendedService.instance.navigatorKey!.currentContext!;
  print(ModalRoute.of(context));

  final arguments = ModalRoute.of(context)!.settings.arguments;
  if (arguments == null) return defaultValue;
  print('arguments; $arguments');
  Map<String, dynamic> args = Map<String, dynamic>.from(arguments as Map<String, dynamic>);
  return args[name] == null ? defaultValue : args[name] as T;
}
