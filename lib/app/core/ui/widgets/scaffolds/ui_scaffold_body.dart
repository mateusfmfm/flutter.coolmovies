import 'package:coolmoviesfinal/app/core/ui/theme/colors/custom_colors.dart';
import 'package:coolmoviesfinal/app/core/ui/widgets/loading/ui_circular_loading.dart';
import 'package:coolmoviesfinal/app/core/ui/widgets/scaffolds/ui_scaffold_raw.dart';
import 'package:flutter/material.dart';

class UIScaffoldBody extends StatelessWidget {
  const UIScaffoldBody({
    Key? key,
    required this.title,
    required this.body,
    this.spacePadding = true,
    required this.isLoading,
  }) : super(key: key);

  final String? title;
  final List<Widget> body;
  final bool? spacePadding;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => Future.sync(() {
        return true;
      }),
      child: UIScaffoldRaw(
        // appBar: UIAppBar(title: title),
        body: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: CustomColors.white,
                    borderRadius: BorderRadius.circular(16)),
                padding: EdgeInsets.all(spacePadding! ? 12 : 0),
                child:
                    isLoading! ? UICircularLoading() : Column(children: body),
              ),
            ),
          )
        ],
      ),
    );
  }
}
