import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppbar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        expandedHeight: 340,
        collapsedHeight: 120,
        floating: false,
        pinned: true,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.shopping_cart),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.background,
        title: title,
        flexibleSpace: FlexibleSpaceBar(
          background: child,
        ));
  }
}
