import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(18.0, 25.0, 30.0, 25),
              margin: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dark Mode',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  CupertinoSwitch(
                    value: Provider.of<ThemeProvider>(context)
                        .isDarkMode, // Remove listen: false here
                    onChanged: (value) =>
                        Provider.of<ThemeProvider>(context, listen: false)
                            .toggleTheme(), // Keep listen: false here
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
