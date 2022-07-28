import 'package:coolmoviesfinal/app/core/ui/theme/fonts_style/fifties_style.dart';
import 'package:flutter/material.dart';

class UILogo extends StatelessWidget {
  const UILogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Image.asset("assets/images/logo/logo.png", height: 50),
        SizedBox(width: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('cool',
                style: FiftiesStyle.regular(context)
                    .merge(TextStyle(color: Colors.purple, fontSize: 24))),
            Text('movies',
                style: FiftiesStyle.regular(context)
                    .merge(TextStyle(color: Colors.purple, fontSize: 24)))
          ],
        )
      ]),
    );
  }
}
