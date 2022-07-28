import 'package:flutter/material.dart';

class AppContext {
  context() {
    return GlobalKey<NavigatorState>().currentContext!;
  }
}
