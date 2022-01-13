import 'package:get/get.dart';

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
  return (Get.arguments == null || Get.arguments[name] == null
      ? defaultValue
      : Get.arguments[name]) as T;
}
