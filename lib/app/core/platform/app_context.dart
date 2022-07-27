import 'package:flutter/material.dart';

abstract class AppContext {
  static BuildContext context = GlobalKey<NavigatorState>().currentContext!;
}
