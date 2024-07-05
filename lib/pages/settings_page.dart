import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Settings')),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.secondary),
              child: Row(
                children: [
                  Text(
                    'Dark Mode',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  CupertinoSwitch(value: false, onChanged: (value) {}),
                ],
              ),
            )
          ],
        ));
  }
}
