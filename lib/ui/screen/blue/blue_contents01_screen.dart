import 'package:bottom_navigaion_bar_demo/ui/enum/blue_routes.dart';
import 'package:bottom_navigaion_bar_demo/ui/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BlueContents01Screen extends StatelessWidget {
  BlueContents01Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Blue Contents01'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: _buildList()),
          ElevatedButton(
            onPressed: () => Navigator.of(context)
                .pushNamed(BlueRoutes.contents02.routeName),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: const Text('Blue Contents02へ'),
          ),
        ],
      ),
    );
  }

  final List<int> materialIndices = [
    900,
    800,
    700,
    600,
    500,
    400,
    300,
    200,
    100,
    50
  ];

  Widget _buildList() {
    return ListView.builder(
      itemCount: materialIndices.length,
      itemBuilder: (BuildContext content, int index) {
        int materialIndex = materialIndices[index];
        return Container(
          height: 100,
          color: Colors.blue[materialIndex],
          child: ListTile(
            title: Text(
              '$materialIndex',
              style: const TextStyle(fontSize: 24.0),
            ),
          ),
        );
      },
    );
  }
}
