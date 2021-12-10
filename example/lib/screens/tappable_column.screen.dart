import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

class TappableColumnScreen extends StatefulWidget {
  const TappableColumnScreen({Key? key}) : super(key: key);

  @override
  _TappableColumnScreenState createState() => _TappableColumnScreenState();
}

class _TappableColumnScreenState extends State<TappableColumnScreen> {
  List<String> colText = ['Column 1', 'Column 2', 'Column 3'];

  onLongPress(int index) {
    colText[index] = 'On long press';
    setState(() {});
  }

  onDoubleTap(int index) {
    colText[index] = 'On double tap';
    setState(() {});
  }

  onTap(int index) {
    colText[index] = 'On tap';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enhanced'),
      ),
      body: Row(
        children: [
          Expanded(
            child: TappableColumn(
              flexes: const [1, 2, 3, 1],
              margin: const EdgeInsets.all(16),
              children: [
                const RedBox(),
                const BlueBox(),
                const YellowBox(),
                Text(
                  colText[0],
                  textAlign: TextAlign.center,
                ),
              ],
              onLongPress: () => onLongPress(0),
              onDoubleTap: () => onDoubleTap(0),
              onTap: () => onTap(0),
            ),
          ),
          TappableColumn(
            mainAxisAlignment: MainAxisAlignment.center,
            padding: const EdgeInsets.all(16),
            children: [
              const RedBox(),
              const BlueBox(),
              const YellowBox(),
              Text(
                colText[1],
                textAlign: TextAlign.center,
              ),
            ],
            onLongPress: () => onLongPress(1),
            onDoubleTap: () => onDoubleTap(1),
            onTap: () => onTap(1),
          ),
          Expanded(
            child: TappableColumn(
              mainAxisAlignment: MainAxisAlignment.end,
              padding: const EdgeInsets.all(16),
              backgroundColor: Colors.grey,
              children: [
                Text(
                  colText[2],
                  textAlign: TextAlign.center,
                ),
                const RedBox(),
                const BlueBox(),
                const YellowBox(),
              ],
              onLongPress: () => onLongPress(2),
              onDoubleTap: () => onDoubleTap(2),
              onTap: () => onTap(2),
            ),
          ),
        ],
      ),
    );
  }
}
