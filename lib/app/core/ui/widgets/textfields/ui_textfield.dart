import 'package:coolmoviesfinal/app/core/ui/theme/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class UITextField extends StatelessWidget {
  const UITextField({
    Key? key,
    this.preffixIcon,
    this.onTap,
    this.focusNode,
  }) : super(key: key);

  final Widget? preffixIcon;
  final Function()? onTap;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        onTap: onTap,
        focusNode: focusNode,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
            filled: true,
            fillColor: CustomColors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            prefixIcon: preffixIcon),
      ),
    );
  }
}
