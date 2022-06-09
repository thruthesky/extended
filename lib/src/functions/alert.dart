import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

// Alert
//
// Display alert box. It has not 'yes', 'no' buttons. So, there is no return value.
Future<void> alert(String title, dynamic content) async {
  if (ExtendedService.instance.navigatorKey == null) throw ERROR_NAVIGATOR_KEY;
  if (content is String == false) {
    content = content.toString();
  }
  return showDialog(
    context: ExtendedService.instance.navigatorKey!.currentContext!,
    builder: (_) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
            onPressed: () => Navigator.pop(
                ExtendedService.instance.navigatorKey!.currentContext!, true),
            child: const Text('Ok')),
      ],
    ),
  );
}
