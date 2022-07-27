import 'package:flutter/material.dart';

class RobotoStyle {
  static TextStyle regular(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
        fontFamily: 'Roboto', color: Colors.white, fontWeight: FontWeight.w400);
  }

  static TextStyle medium(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
        fontFamily: 'Roboto', color: Colors.white, fontWeight: FontWeight.w500);
  }

  static TextStyle bold(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
        fontFamily: 'Roboto', color: Colors.white, fontWeight: FontWeight.w700);
  }
}
