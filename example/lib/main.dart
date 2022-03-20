import 'package:example/screens/download_screen.dart';
import 'package:example/screens/extended_column.screen.dart';
import 'package:example/screens/gradient_card.screen.dart';
import 'package:example/screens/extended_row.screen.dart';
import 'package:extended/extended.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

GlobalKey<NavigatorState> globalNavigatorKey = GlobalKey();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    ExtendedService.instance.navigatorKey = globalNavigatorKey;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: globalNavigatorKey,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/getArg': (context) => Scaffold(
              appBar: AppBar(title: const Text('getArg() test screen')),
              body: const Text('a is for ... \$a,\nb is for \$b'),
            ),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final titleStyle = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enhanced'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Wrap(
                  children: [
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
                        MaterialPageRoute(builder: (c) => const ExtendedColumnScreen()),
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
                  ],
                ),
                const Divider(),
                Wrap(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        alert('Alert Box', 'This is alert box');
                      },
                      child: const Text('alert'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final re = await confirm(
                            'Confirm Dialog', 'Do you want to press yes button? or no button?');

                        alert('Result', 'You have pressed ${re ? 'YES' : 'NO'} button');
                      },
                      child: const Text('confirm'),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        final re =
                            await inputDialog('Input dialog box', 'What do you want to input?');
                        alert('Result', 'You have input; $re');
                      },
                      child: const Text('input dialog'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/getArg',
                          arguments: {'a': 'Apple', 'b': 'Banana'},
                        );
                      },
                      child: const Text('getArg'),
                    ),
                  ],
                ),
                const Divider(),
                Text('Button', style: titleStyle),
                Button(
                  text: 'Button',
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  backgroundColor: Colors.yellow[800]!,
                  color: white,
                ),
                const Divider(),
                Text('Avatar', style: titleStyle),
                const Avatar(url: 'https://placekitten.com/200/200'),
                const Divider(),
                Text('TipBox', style: titleStyle),
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
                Text('Select', style: titleStyle),
                Select(
                  options: const {'a': 'Apple', 'b': 'Banana', 'c': 'Cherry', 'd': 'Durian'},
                  defaultValue: '',
                  selectedValue: '',
                  defaultLabel: 'Select category',
                  onChanged: (v) => debugPrint(v),
                ),
                const Divider(),
                Text('Popup', style: titleStyle),
                Popup(
                  icon: const Icon(Icons.access_alarm_rounded),
                  options: {
                    'a': PopupOption(icon: const Icon(Icons.addchart), label: 'Apple'),
                    'b': PopupOption(icon: const Icon(Icons.bookmarks), label: 'Banana'),
                    'c': PopupOption(icon: const Icon(Icons.cabin), label: 'Cherry'),
                  },
                  initialValue: 'b',
                  onSelected: (v) => debugPrint(v),
                ),
                const Divider(),
                Text('ExtendedText', style: titleStyle),
                ExtendedText(
                  'This is extended text',
                  padding: const EdgeInsets.all(16),
                  style: TextStyle(
                    color: Colors.red.shade800,
                  ),
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  onTap: () => alert('ExtendedText', 'tapped'),
                ),
                const Text(
                    '''
          ExtendedText(
            'This is extended text',
            padding: const EdgeInsets.all(16),
            style: TextStyle(
              color: Colors.red.shade800,
            ),
            decoration: BoxDecoration(color: Colors.grey.shade300),
            onTap: () => alert('ExtendedText', 'tapped'),
          )
                '''),
                Text('ExtendedText enabling links', style: titleStyle),
                ExtendedText(
                  'This is link: https://google.com oo',
                  padding: const EdgeInsets.all(16),
                  style: TextStyle(
                    color: Colors.red.shade800,
                  ),
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  onTap: () => alert('onTap', 'onTap on ExtendedText'),
                ),
                Text('ExtendedText renderlink HTML', style: titleStyle),
                ExtendedText(
                  'This is link: <a href="https://google.com">Tap to open google</a><br><p>Par<b>agra</b>ph</p>',
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      await Firebase.initializeApp();
                    } catch (e) {
                      debugPrint(e.runtimeType.toString());
                      debugPrint(e.toString());
                      // ignore: deprecated_member_use
                      await error(e);
                      debugPrint('done');
                      await alert('Done', 'Error handling had finished');
                    }
                  },
                  child: const Text(
                    'Produce Firebase Exception & alert',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
