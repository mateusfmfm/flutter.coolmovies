import 'package:coolmoviesfinal/app/core/ui/theme/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class UICircularLoading extends StatelessWidget {
  const UICircularLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            height: 23,
            width: 23,
            child: CircularProgressIndicator(
                color: CustomColors.black, strokeWidth: 2.25)));
  }
}
