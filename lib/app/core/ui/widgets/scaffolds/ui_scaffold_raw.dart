import 'package:coolmoviesfinal/app/core/ui/theme/colors/custom_colors.dart';
import 'package:flutter/material.dart';

class UIScaffoldRaw extends StatelessWidget {
  const UIScaffoldRaw({Key? key, this.appBar, required this.body})
      : super(key: key);

  final Widget? appBar;
  final List<Widget> body;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    opacity: .1,
                    image: AssetImage(
                        "assets/images/backgrounds/background_white.jpg"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 182,
                decoration: BoxDecoration(
                    color: CustomColors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35))),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 90),
                  child: appBar,
                ),
              ),
              Positioned(
                top: 95,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: body,
                  ),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: UIBottomNavigationBar(),
      ),
    );
  }
}
