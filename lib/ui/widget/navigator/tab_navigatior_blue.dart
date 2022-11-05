import 'package:bottom_navigaion_bar_demo/ui/enum/blue_routes.dart';
import 'package:bottom_navigaion_bar_demo/ui/enum/tab_item.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/blue/blue_contents01_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/blue/blue_contents02_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/blue/blue_root_screen.dart';
import 'package:flutter/material.dart';

class TabNavigatorBlue extends StatelessWidget {
  const TabNavigatorBlue({
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
      BlueRoutes.root.routeName: (context) => const BlueRootScreen(),
      BlueRoutes.contents01.routeName: (context) => BlueContents01Screen(),
      BlueRoutes.contents02.routeName: (context) => BlueContents02Screen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: BlueRoutes.root.routeName,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => routeBuilders[routeSettings.name!]!(context),
        );
      },
    );
  }
}
