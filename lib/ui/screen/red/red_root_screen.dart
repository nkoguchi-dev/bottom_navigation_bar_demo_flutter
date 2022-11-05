import 'package:bottom_navigaion_bar_demo/ui/enum/red_routes.dart';
import 'package:bottom_navigaion_bar_demo/ui/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RedRootScreen extends StatelessWidget {
  const RedRootScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Red Root'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(RedRoutes.contents01.routeName),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: const Text('Red Contents01へ'),
        ),
      ),
    );
  }
}
