import 'package:bottom_navigaion_bar_demo/ui/enum/red_routes.dart';
import 'package:bottom_navigaion_bar_demo/ui/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RedContents01Screen extends StatelessWidget {
  const RedContents01Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Red Contents01'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(RedRoutes.contents02.routeName),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: const Text('Red Contents02へ'),
        ),
      ),
    );
  }
}
