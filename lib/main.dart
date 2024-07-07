import 'package:contador_flutter/app_factory.dart';
import 'package:contador_flutter/scaffold_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppFactory(
      'Flutter Demo OS',
      const MyHomePage(title: 'Flutter Demo Home Page'),
    ).build();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String getSO() {
    if (kIsWeb) {
      return ('is web');
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return ('is iOS');
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return ('is Android');
    }

    return ('Ni idea');
  }

  Widget getButtonByOS() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoButton.filled(
        child: const Icon(CupertinoIcons.add),
        onPressed: _incrementCounter,
      );
    } else {
      return FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment counter',
        child: const Icon(Icons.add),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldOSFactory(Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            getSO(),
          ),
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          getButtonByOS(),
          //ButtonFactory(_incrementCounter).build(),
        ],
      ),
    )).build();
  }
}
