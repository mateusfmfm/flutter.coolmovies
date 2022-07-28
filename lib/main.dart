import 'package:coolmoviesfinal/app/core/platform/network_utils.dart';
import 'package:coolmoviesfinal/app/core/routes/app_router.dart';
import 'package:coolmoviesfinal/app/core/routes/app_routes.dart';
import 'package:coolmoviesfinal/app/core/ui/theme/colors/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  // We're using HiveStore for persistence,
  // so we need to initialize Hive.
  await initHiveForFlutter();

  var client = NetworkUtils().getClient();

  runApp(GraphQLProvider(
    client: client,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cool Movies',
      builder: (context, widget) => ResponsiveWrapper.builder(
        widget,
        maxWidth: 1200,
        minWidth: 360,
        defaultScale: true,
        breakpoints: [const ResponsiveBreakpoint.autoScale(360, name: MOBILE)],
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: CustomColors.primary,
          secondary: CustomColors.textGrey,
        ),
      ),
      initialRoute: Routes.HOME,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
