import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

/// Input dialog
///
Future<String?> inputDialog(String title, String content) {
  if (ExtendedService.instance.navigatorKey == null) throw ERROR_NAVIGATOR_KEY;
  final context = ExtendedService.instance.navigatorKey!.currentContext!;

  final input = TextEditingController(text: '');
  return showDialog(
    context: context,
    builder: (c) => AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(content),
          TextField(
            controller: input,
            maxLines: 4,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Close'),
        ),
        TextButton(
          onPressed: () async {
            Navigator.pop(context, input.text);
          },
          child: const Text('Submit'),
        ),
      ],
    ),
  );
}
