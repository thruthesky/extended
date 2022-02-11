import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

/// Confirm dialog
///
/// It displays a dialog with "Yes", "No" button for user to choose.
/// It return true on "Yes" button click. Otherwise false. Note that, false will
/// be returned on closing by backdrop.
Future<bool> confirm(String title, String content) async {
  if (ExtendedService.instance.navigatorKey == null) throw ERROR_NAVIGATOR_KEY;
  final context = ExtendedService.instance.navigatorKey!.currentContext!;
  final re = await showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Yes'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('No'),
          )
        ],
      );
    },
  );
  if (re == true) {
    return true;
  } else {
    return false;
  }
}
