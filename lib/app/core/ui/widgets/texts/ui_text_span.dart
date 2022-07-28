import 'package:coolmoviesfinal/app/core/ui/theme/colors/custom_colors.dart';
import 'package:coolmoviesfinal/app/core/ui/theme/fonts_style/roboto_style.dart';
import 'package:flutter/cupertino.dart';

class TextSpanRegular extends TextSpan {
  final String content;
  final Color color;
  final double fontSize;
  final BuildContext? context;

  const TextSpanRegular(this.content,
      {required this.context,
      this.fontSize = 14,
      this.color = CustomColors.textDarkGrey})
      : super(text: content);

  @override
  TextStyle get style => RobotoStyle.regular(context!)
      .merge(TextStyle(fontSize: fontSize, color: color));
}

class TextSpanMedium extends TextSpan {
  final String content;
  final Color color;
  final double fontSize;
  final BuildContext? context;

  const TextSpanMedium(this.content,
      {required this.context,
      this.fontSize = 14,
      this.color = CustomColors.textDarkGrey})
      : super(text: content);

  @override
  TextStyle get style => RobotoStyle.medium(context!)
      .merge(TextStyle(fontSize: fontSize, height: 1.5, color: color));
}

class TextSpanBold extends TextSpan {
  final String content;
  final Color color;
  final double fontSize;
  final BuildContext? context;

  const TextSpanBold(this.content,
      {required this.context,
      this.fontSize = 14,
      this.color = CustomColors.textDarkGrey})
      : super(text: content);

  @override
  TextStyle get style => RobotoStyle.bold(context!)
      .merge(TextStyle(fontSize: fontSize, height: 1.5, color: color));
}
