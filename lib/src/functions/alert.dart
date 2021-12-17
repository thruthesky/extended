import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Alert
//
// Display alert box. It has not 'yes', 'no' buttons. So, there is no return value.
Future<void> alert(String title, dynamic content) async {
  if (content is String == false) {
    content = content.toString();
  }
  return showDialog(
    context: Get.context!,
    builder: (_) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(onPressed: () => Get.back(result: true), child: const Text('Ok')),
      ],
    ),
  );
}
