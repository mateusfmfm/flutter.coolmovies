import 'package:coolmoviesfinal/app/core/ui/theme/colors/custom_colors.dart';
import 'package:coolmoviesfinal/app/core/ui/widgets/logo/ui_logo.dart';
import 'package:coolmoviesfinal/app/core/ui/widgets/scaffolds/ui_scaffold_raw.dart';
import 'package:coolmoviesfinal/app/core/ui/widgets/textfields/ui_textfield.dart';
import 'package:coolmoviesfinal/app/core/ui/widgets/texts/ui_text_span.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return UIScaffoldRaw(appBar: _homeAppBar(), body: [
      _searchInput(),
      _userContent(),
    ]);
  }

  Widget _homeAppBar() => SizedBox(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              UILogo(),
              GestureDetector(
                  onTap: () => {},
                  child:
                      SvgPicture.asset("assets/images/icons/menu_burger.svg"))
            ]),
      );

  Widget _searchInput() => UITextField(
        onTap: () => {},
        preffixIcon: Icon(Icons.search),
      );

  Widget _userContent() => Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
              color: CustomColors.white,
              border: Border.all(color: CustomColors.textLightGrey),
              borderRadius: BorderRadius.circular(16)),
          child: RichText(
              text: TextSpan(children: [
            TextSpanBold(context: context, "Hi visitor! :)\n", fontSize: 14),
            TextSpanRegular(
                context: context,
                "Looks you're not logged in. Sign in or sign up to enjoy our app :D",
                fontSize: 12,
                color: CustomColors.textGrey)
          ]))));
}
