import "package:flutter/material.dart";

import "../models/dummy-data.dart";
import "../widgets/mealItem.dart";

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs["title"];
    final categoryId = routeArgs["id"];
    final filteredCategory = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: filteredCategory[index].id,
            title: filteredCategory[index].title,
            imageUrl: filteredCategory[index].imageUrl,
            duration: filteredCategory[index].duration,
            affordability: filteredCategory[index].affordability,
            complexity: filteredCategory[index].complexity,
          );
        },
        itemCount: filteredCategory.length,
      ),
    );
  }
}
