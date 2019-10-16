import "package:flutter/material.dart";

class MealDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal Title"),
      ),
      body: Center(
        child: Text(mealId["id"]),
      ),
    );
  }
}
