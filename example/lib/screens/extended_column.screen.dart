import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

class ExtendedColumnScreen extends StatefulWidget {
  const ExtendedColumnScreen({Key? key}) : super(key: key);

  @override
  _ExtendedColumnScreenState createState() => _ExtendedColumnScreenState();
}

class _ExtendedColumnScreenState extends State<ExtendedColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExtendedColumn'),
      ),
      body: Row(
        children: [
          ExtendedColumn(
            mainAxisAlignment: MainAxisAlignment.start,
            width: 50,
            // height: 200,
            flexes: const [1, 2, 3],
            margin: const EdgeInsets.all(16),
            children: const [
              RedBox(),
              BlueBox(),
              YellowBox(),
            ],
            onTap: () => alert('onTap', 'tapped'),
            onDoubleTap: () => alert('onDoubleTap', 'double tapped'),
            onLongPress: () => alert('onLongPress', 'long press'),
          ),
          ExtendedColumn(
            width: 100,
            mainAxisAlignment: MainAxisAlignment.start,
            padding: const EdgeInsets.all(16),
            children: const [
              RedBox(),
              BlueBox(),
              YellowBox(),
            ],
            onTap: () => alert('onTap', 'tapped'),
            onDoubleTap: () => alert('onDoubleTap', 'double tapped'),
            onLongPress: () => alert('onLongPress', 'long press'),
          ),
          ExtendedColumn(
            mainAxisAlignment: MainAxisAlignment.start,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            backgroundColor: Colors.black,
            borderRadius: 16,
            borderWidth: 5.5,
            borderColor: Colors.blueGrey,
            children: const [
              RedBox(),
              BlueBox(),
              YellowBox(),
            ],
            flexes: const [1, 1, 1],
            onTap: () => alert('onTap', 'tapped'),
            onDoubleTap: () => alert('onDoubleTap', 'double tapped'),
            onLongPress: () => alert('onLongPress', 'long press'),
          ),
        ],
      ),
    );
  }
}
