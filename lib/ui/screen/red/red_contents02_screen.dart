import 'package:flutter/material.dart';

class RedContents02Screen extends StatelessWidget {
  const RedContents02Screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Red Contents02'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              Navigator.of(context).popUntil((route) => route.isFirst),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: const Text('Red Rootへ戻る'),
        ),
      ),
    );
  }
}
