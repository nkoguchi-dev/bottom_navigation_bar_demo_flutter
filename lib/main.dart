import 'package:bottom_navigaion_bar_demo/ui/enum/root_routes.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/root/root_root.dart';
import 'package:bottom_navigaion_bar_demo/ui/screen/root/root_contents01_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        RootRoutes.root.routeName: ((context) => const RootScreen()),
        RootRoutes.contents01.routeName: ((context) =>
            const RootContents01Screen()),
      },
    );
  }
}
