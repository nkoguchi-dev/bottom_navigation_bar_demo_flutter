import 'package:bottom_navigaion_bar_demo/ui/widget/tab_navigatior_red.dart';
import 'package:flutter/material.dart';

class RedRootScreen extends StatelessWidget {
  const RedRootScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Red Root'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context)
              .pushNamed(TabNavigatorRedRoutes.contents01.routeName),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: const Text('Red Contents01へ'),
        ),
      ),
    );
  }
}
