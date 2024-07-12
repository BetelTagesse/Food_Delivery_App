import 'package:flutter/material.dart';

class MyTabbar extends StatelessWidget {
  final TabController tabController;
  const MyTabbar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(controller: tabController, tabs: [
      Tab(
        icon: Icon(Icons.home),
      ),
      Tab(
        icon: Icon(Icons.settings),
      ),
    ]);
  }
}
