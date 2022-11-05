import 'package:bottom_navigaion_bar_demo/ui/enum/green_routes.dart';
import 'package:bottom_navigaion_bar_demo/ui/enum/tab_item.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/green/green_contents01_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/green/green_contents02_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/green/green_contents03_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/green/green_root_screen.dart';
import 'package:flutter/material.dart';

class TabNavigatorGreen extends StatelessWidget {
  const TabNavigatorGreen({
    super.key,
    required this.navigatorKey,
    required this.tabItem,
  });
  final GlobalKey<NavigatorState>? navigatorKey;
  final TabItem tabItem;

  Map<String, WidgetBuilder> _routeBuilders(
    BuildContext context,
  ) {
    return {
      GreenRoutes.root.routeName: (context) => const GreenRootScreen(),
      GreenRoutes.contents01.routeName: (context) =>
          const GreenContents01Screen(),
      GreenRoutes.contents02.routeName: (context) =>
          const GreenContents02Screen(),
      GreenRoutes.contents03.routeName: (context) =>
          const GreenContents03Screen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: GreenRoutes.root.routeName,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => routeBuilders[routeSettings.name!]!(context),
        );
      },
    );
  }
}
