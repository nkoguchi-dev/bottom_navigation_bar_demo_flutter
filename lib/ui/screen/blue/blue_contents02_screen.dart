import 'package:flutter/material.dart';

class BlueContents02Screen extends StatelessWidget {
  BlueContents02Screen({super.key});
  late final controller = TextEditingController(text: _createRandomLines());

  static String _createRandomLines({int max = 100}) {
    var list = List<String>.generate(max, (i) => '${i + 1}:${UniqueKey()}');
    return list.join('\n');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blue Contents02'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: Theme.of(context).buttonTheme.padding,
              child: TextFormField(
                textAlign: TextAlign.start,
                controller: controller,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.of(context).popUntil((route) => route.isFirst),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: const Text('Blue Rootへ戻る'),
          ),
        ],
      ),
    );
  }
}
