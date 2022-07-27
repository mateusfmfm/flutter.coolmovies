import 'package:coolmoviesfinal/app/core/ui/theme/fonts_style/roboto_style.dart';
import 'package:flutter/material.dart';

class TextBold extends StatelessWidget {
  const TextBold(
      {@required this.text, this.fontSize = 14, this.fontColor, Key? key})
      : super(key: key);

  final String? text;
  final double? fontSize;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: RobotoStyle.bold(context)
            .merge(TextStyle(color: fontColor, fontSize: fontSize)));
  }
}

class TextMedium extends StatelessWidget {
  const TextMedium(
      {@required this.text, this.fontSize = 14, this.fontColor, Key? key})
      : super(key: key);

  final String? text;
  final double? fontSize;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: RobotoStyle.medium(context)
            .merge(TextStyle(color: fontColor, fontSize: fontSize)));
  }
}

class TextRegular extends StatelessWidget {
  const TextRegular(
      {@required this.text, this.fontSize = 14, this.fontColor, Key? key})
      : super(key: key);

  final String? text;
  final double? fontSize;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        style: RobotoStyle.regular(context)
            .merge(TextStyle(color: fontColor, fontSize: fontSize)));
  }
}
