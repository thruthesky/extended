import 'package:flutter/material.dart';

Future alert(BuildContext context, String title, String content) {
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        ElevatedButton(onPressed: () => Navigator.pop(context, 'pressed'), child: const Text('ok'))
      ],
    ),
  );
}
