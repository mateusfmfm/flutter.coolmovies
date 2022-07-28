import 'package:flutter/material.dart';

class FiftiesStyle {
  static TextStyle regular(BuildContext context) {
    return Theme.of(context).textTheme.headline1!.copyWith(
        fontFamily: 'Fifties',
        color: Colors.white,
        fontWeight: FontWeight.w700);
  }
}
