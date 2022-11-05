import 'package:bottom_navigaion_bar_demo/ui/enum/red_routes.dart';
import 'package:bottom_navigaion_bar_demo/ui/enum/tab_item.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/red/red_root_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/red/red_contents01_screen.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/red/red_contents02_screen.dart';
import 'package:flutter/material.dart';

class TabNavigatorRed extends StatelessWidget {
  const TabNavigatorRed({
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
      RedRoutes.root.routeName: (context) => const RedRootScreen(),
      RedRoutes.contents01.routeName: (context) => const RedContents01Screen(),
      RedRoutes.contents02.routeName: (context) => const RedContents02Screen(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: RedRoutes.root.routeName,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name!]!(context),
        );
      },
    );
  }
}
