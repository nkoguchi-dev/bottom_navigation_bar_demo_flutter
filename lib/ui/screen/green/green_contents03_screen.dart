import 'package:bottom_navigaion_bar_demo/ui/widget/navigator/tab_navigatior_green.dart';
import 'package:flutter/material.dart';

class GreenContents03Screen extends StatelessWidget {
  const GreenContents03Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Green Contents03'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).popUntil(
                ModalRoute.withName(
                  TabNavigatorGreenRoutes.contents01.routeName,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Green Contents01へ戻る'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).popUntil((route) => route.isFirst),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: const Text('Green Rootへ戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
