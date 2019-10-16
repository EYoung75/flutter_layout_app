import "package:flutter/material.dart";

import "../widgets/mainDrawer.dart";

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var _glutenFree = false;
  var _lactoseFree = false;
  var _vegetarian = false;
  var _vegan = false;

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text("settings"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Adjust meal selections:",
                style: Theme.of(context).textTheme.title,
              ),
              padding: EdgeInsets.all(20),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTile(
                      "Gluten-Free", "Show only GF meals", _glutenFree,
                      (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  }),
                  _buildSwitchListTile("Lactose-Free",
                      "Show only lactose free meals", _lactoseFree, (newValue) {
                    setState(() {
                      _lactoseFree = newValue;
                    });
                  }),
                  _buildSwitchListTile(
                      "Vegetarian", "Show only meals that are vegetarian", _vegetarian,
                      (newValue) {
                    setState(() {
                      _vegetarian = newValue;
                    });
                  }),
                  _buildSwitchListTile(
                      "Vegan", "Show only meals that are vegan", _vegan,
                      (newValue) {
                    setState(() {
                      _vegan = newValue;
                    });
                  })
                ],
              ),
            )
          ],
        ));
  }
}
