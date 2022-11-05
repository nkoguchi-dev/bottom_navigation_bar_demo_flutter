import 'package:flutter/material.dart';

class RootContents01Screen extends StatelessWidget {
  const RootContents01Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Root Contents01'),
      ),
      body: const Center(
        child: Text('Root Contents01'),
      ),
    );
  }
}
