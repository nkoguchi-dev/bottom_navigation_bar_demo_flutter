import 'package:bottom_navigaion_bar_demo/ui/enum/tab_item.dart';
import 'package:bottom_navigaion_bar_demo/ui/widget/bottom_navigation.dart';
import 'package:bottom_navigaion_bar_demo/ui/widget/navigator/tab_navigatior_blue.dart';
import 'package:bottom_navigaion_bar_demo/ui/widget/navigator/tab_navigatior_green.dart';
import 'package:bottom_navigaion_bar_demo/ui/widget/navigator/tab_navigatior_red.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<StatefulWidget> createState() => RootScreenState();
}

class RootScreenState extends State<RootScreen> {
  var _currentTab = TabItem.red;
  final _navigatorKeys = {
    TabItem.red: GlobalKey<NavigatorState>(),
    TabItem.green: GlobalKey<NavigatorState>(),
    TabItem.blue: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab]!.currentState!.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (_currentTab != TabItem.red) {
            // select 'main' tab
            _selectTab(TabItem.red);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigatorRed(),
          _buildOffstageNavigatorGreen(),
          _buildOffstageNavigatorBlue(),
        ]),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigatorRed() {
    return Offstage(
      offstage: _currentTab != TabItem.red,
      child: TabNavigatorRed(
        navigatorKey: _navigatorKeys[TabItem.red],
        tabItem: TabItem.red,
      ),
    );
  }

  Widget _buildOffstageNavigatorGreen() {
    return Offstage(
      offstage: _currentTab != TabItem.green,
      child: TabNavigatorGreen(
        navigatorKey: _navigatorKeys[TabItem.green],
        tabItem: TabItem.green,
      ),
    );
  }

  Widget _buildOffstageNavigatorBlue() {
    return Offstage(
      offstage: _currentTab != TabItem.blue,
      child: TabNavigatorBlue(
        navigatorKey: _navigatorKeys[TabItem.blue],
        tabItem: TabItem.blue,
      ),
    );
  }
}
