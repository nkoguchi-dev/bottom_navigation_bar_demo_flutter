import 'package:bottom_navigaion_bar_demo/ui/widget/navigator/tab_navigatior_blue.dart';
import 'package:flutter/material.dart';

class BlueRootScreen extends StatelessWidget {
  const BlueRootScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blue Root'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context)
              .pushNamed(TabNavigatorBlueRoutes.contents01.routeName),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          child: const Text('Blue Contents01へ'),
        ),
      ),
    );
  }
}
