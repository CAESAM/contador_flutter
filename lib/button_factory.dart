import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ButtonFactory {
  final Function _function;

  ButtonFactory(this._function);

  Widget build() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoButton.filled(
        child: const Icon(CupertinoIcons.add),
        onPressed: () => _function,
      );
    } else {
      return FloatingActionButton(
        onPressed: () => _function,
        tooltip: 'Increment counter',
        child: const Icon(Icons.add),
      );
    }
  }
}
