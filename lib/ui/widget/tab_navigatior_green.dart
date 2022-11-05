import 'package:bottom_navigaion_bar_demo/ui/model/tab_item.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/green/green_contents01_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/green/green_contents02_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/green/green_contents03_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/green/green_root_screen.dart';
import 'package:flutter/material.dart';

enum TabNavigatorGreenRoutes {
  greenRoute('/'),
  contents01('/contents01'),
  contents02('/contents02'),
  contents03('/contents03');

  const TabNavigatorGreenRoutes(this.routeName);
  final String routeName;
}

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
      TabNavigatorGreenRoutes.greenRoute.routeName: (context) =>
          const GreenRootScreen(),
      TabNavigatorGreenRoutes.contents01.routeName: (context) =>
          const GreenContents01Screen(),
      TabNavigatorGreenRoutes.contents02.routeName: (context) =>
          const GreenContents02Screen(),
      TabNavigatorGreenRoutes.contents03.routeName: (context) =>
          const GreenContents03Screen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorGreenRoutes.greenRoute.routeName,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => routeBuilders[routeSettings.name!]!(context),
        );
      },
    );
  }
}
