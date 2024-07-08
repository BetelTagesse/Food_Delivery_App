import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppbar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: title,
      flexibleSpace: FlexibleSpaceBar(),
    );
  }
}
