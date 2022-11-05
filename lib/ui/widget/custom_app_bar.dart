import 'package:bottom_navigaion_bar_demo/ui/enum/root_routes.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    this.backgroundColor,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);
  final Widget title;
  final Color? backgroundColor;

  @override
  final Size preferredSize;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: widget.title,
      backgroundColor: widget.backgroundColor ?? Theme.of(context).primaryColor,
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context, rootNavigator: true)
              .pushNamed(RootRoutes.contents01.routeName),
        )
      ],
    );
  }
}
