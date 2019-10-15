import "package:flutter/material.dart";

class MealDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Meal Title"),
        ),
        body: Center(
          child: Text("MEAL"),
        ));
  }
}
