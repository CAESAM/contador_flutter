import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScaffoldOSFactory {
  final Widget _child;

  ScaffoldOSFactory(this._child);

  Widget build() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
            middle: Text('Cupertino App Contador')),
        child: _child,
      ); // This trailing comma makes auto-formatting nicer for build methods.
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Contador'),
        ),
        body: _child,
      );
    }
  }
}
