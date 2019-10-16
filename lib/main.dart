import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/categoryMealsScreen.dart';
import 'package:flutter_complete_guide/screens/mealDetailScreen.dart';

import "./screens/categoriesScreen.dart";
import "./screens/categoryMealsScreen.dart";
import "./screens/mealDetailScreen.dart";
import "./screens/tabsScreen.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Recipes',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "RobotoCondensed")),
      ),
      routes: {
        "/": (ctx) => TabsScreen(),
        "/meal-category": (ctx) => CategoryMealsScreen(),
        "/meal-details": (ctx) => MealDetailScreen()
      },
      
    );
  }
}
