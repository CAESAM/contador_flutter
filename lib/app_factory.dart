import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class AppFactory {
  final String _tittle;
  final Widget? _home;

  AppFactory(this._tittle, this._home);

  Widget build() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoApp(
        title: _tittle,
        theme: const CupertinoThemeData(
          scaffoldBackgroundColor: Colors.orange,
          primaryColor: Colors.blue,
        ),
        home: _home,
      );
    } else {
      return MaterialApp(
        title: _tittle,
        theme: ThemeData(primarySwatch: Colors.green),
        home: _home,
      );
    }
  }
}
