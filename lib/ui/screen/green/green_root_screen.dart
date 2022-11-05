import 'package:bottom_navigaion_bar_demo/ui/enum/green_routes.dart';
import 'package:bottom_navigaion_bar_demo/ui/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class GreenRootScreen extends StatelessWidget {
  const GreenRootScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Green Root'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(GreenRoutes.contents01.routeName),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: const Text('Green Contents01へ'),
        ),
      ),
    );
  }
}
