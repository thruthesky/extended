import 'package:enhanced/enhanced.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enhanced'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
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
              onTap: () => print('onTap'),
              onLongPress: () => print('onLongPress'),
              onDoubleTap: () => print('onDoulbeTap'),
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
              onTap: () => print('onTap'),
              onLongPress: () => print('onLongPress'),
              onDoubleTap: () => print('onDoulbeTap'),
            ),
            const Divider(),
            const RedBox(),
            const GreenBox(),
            const BlueBox(),
          ],
        ),
      ),
    );
  }
}
