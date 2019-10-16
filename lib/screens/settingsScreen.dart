import "package:flutter/material.dart";

import "../widgets/mainDrawer.dart";

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("settings"),
      ),
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}
