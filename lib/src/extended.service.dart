import 'package:flutter/material.dart';

class ExtendedService {
  static ExtendedService? _instance;
  static ExtendedService get instance {
    _instance ??= ExtendedService();
    return _instance!;
  }

  GlobalKey<NavigatorState>? navigatorKey;
}
