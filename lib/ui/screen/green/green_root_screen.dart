import 'package:bottom_navigaion_bar_demo/ui/widget/navigator/tab_navigatior_green.dart';
import 'package:flutter/material.dart';

class GreenRootScreen extends StatelessWidget {
  const GreenRootScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Green Root'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context)
              .pushNamed(TabNavigatorGreenRoutes.contents01.routeName),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: const Text('Green Contents01へ'),
        ),
      ),
    );
  }
}
