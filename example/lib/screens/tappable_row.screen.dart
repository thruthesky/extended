import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

class TappableRowScreen extends StatefulWidget {
  const TappableRowScreen({Key? key}) : super(key: key);

  @override
  State<TappableRowScreen> createState() => _TappableRowScreenState();
}

class _TappableRowScreenState extends State<TappableRowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TappableRow'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TappableRow(
              mainAxisAlignment: MainAxisAlignment.center,
              backgroundColor: Colors.grey,
              children: [RedBox(), GreenBox(), BlueBox()],
            ),
            TappableRow(
              width: 240,
              height: 120,
              backgroundColor: Colors.yellow,
              children: const [
                RedBox(),
                GreenBox(),
                BlueBox(),
              ],
              flexes: const [1, 2, 3],
              onTap: () => alert(context, 'onTap', 'tapped'),
            ),
            TappableRow(
              // width: 240,
              height: 150,
              backgroundColor: Colors.black,
              children: const [
                RedBox(),
                GreenBox(),
                BlueBox(),
              ],
              flexes: const [3, 2, 1],
            ),
            TappableRow(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              backgroundColor: Colors.black,
              borderRadius: 16,
              borderWidth: 5.5,
              borderColor: Colors.blueGrey,
              children: const [RedBox(), GreenBox(), BlueBox()],
              // flexes: const [1, 2, 3],
              onTap: () => alert(context, 'onTap', 'tapped'),
              onDoubleTap: () => alert(context, 'onDoubleTap', 'double tapped'),
              onLongPress: () => alert(context, 'onLongPress', 'long press'),
            ),
          ],
        ),
      ),
    );
  }
}
