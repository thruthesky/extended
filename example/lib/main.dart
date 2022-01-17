import 'package:example/screens/download_screen.dart';
import 'package:example/screens/extended_column.screen.dart';
import 'package:example/screens/gradient_card.screen.dart';
import 'package:example/screens/extended_row.screen.dart';
import 'package:extended/extended.dart';
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => const ExtendedRowScreen()),
                ),
                child: const Text('ExtendedRow'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (c) => const ExtendedColumnScreen()),
                ),
                child: const Text('ExtendedColumn'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => const GradientCardScreen()),
                ),
                child: const Text('Gradient Card'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => const DownloadScreen()),
                ),
                child: const Text('Download'),
              ),
              const SizedBox(height: 32),
              const Divider(),
              const Text('Button'),
              Button(
                text: 'Button',
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                backgroundColor: Colors.yellow[800]!,
                color: white,
              ),
              const Divider(),
              const Text('Avatar'),
              const Avatar(url: 'https://placekitten.com/200/200'),
              const Divider(),
              const Text('TipBox'),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TipBox(
                  padding: EdgeInsets.all(16),
                  leading: Icon(Icons.access_alarms),
                  title: Text(
                    'This is top box title!',
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Text('And this is subtitle'),
                ),
              ),
              const Divider(),
              Select(
                options: const {
                  'a': 'Apple',
                  'b': 'Banana',
                  'c': 'Cherry',
                  'd': 'Durian'
                },
                defaultValue: '',
                selectedValue: '',
                defaultLabel: 'Select category',
                onChanged: (v) => print(v),
              ),
              const Divider(),
              Popup(
                icon: const Icon(Icons.access_alarm_rounded),
                options: {
                  'a': PopupOption(
                      icon: const Icon(Icons.addchart), label: 'Apple'),
                  'b': PopupOption(
                      icon: const Icon(Icons.bookmarks), label: 'Banana'),
                  'c': PopupOption(
                      icon: const Icon(Icons.cabin), label: 'Cherry'),
                },
                initialValue: 'b',
                onSelected: (v) => print(v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
