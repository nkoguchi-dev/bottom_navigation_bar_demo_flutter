import 'package:bottom_navigaion_bar_demo/ui/enum/green_routes.dart';
import 'package:bottom_navigaion_bar_demo/ui/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class GreenContents01Screen extends StatelessWidget {
  const GreenContents01Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Green Contents01'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Navigator.of(context).pushNamed(GreenRoutes.contents02.routeName),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          child: const Text('Green Contents02へ'),
        ),
      ),
    );
  }
}
