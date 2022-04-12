import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  _DownloadScreenState createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    try {
      // final file =
      await download('https://jsonplaceholder.typicode.com/posts/1');
      // debugPrint(file);
      // final content =
      await downloadContent('https://jsonplaceholder.typicode.com/posts/1');
      // debugPrint(const Utf8Decoder(allowMalformed: true).convert(content));
    } catch (e) {
      // ignore: deprecated_member_use
      error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Download'),
      ),
    );
  }
}
