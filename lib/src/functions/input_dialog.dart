import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Input dialog
///
Future<String?> inputDialog(String title, String content) {
  final input = TextEditingController(text: '');
  return showDialog(
    context: Get.context!,
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
            Get.back();
          },
          child: Text('close'.tr),
        ),
        TextButton(
          onPressed: () async {
            Get.back(result: input.text);
          },
          child: Text('submit'.tr),
        ),
      ],
    ),
  );
}
