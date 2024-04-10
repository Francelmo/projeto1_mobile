import 'package:absolut_recipe/screens/favorites.dart';
import 'package:absolut_recipe/screens/ingredients.dart';
import 'package:absolut_recipe/screens/recipes.dart';
import 'package:flutter/material.dart';
import 'package:absolut_recipe/components/navBar.dart';
import 'package:absolut_recipe/utils/routes.dart';
import 'package:absolut_recipe/data/data.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      AppRoutes.HOME: (ctx) => MyApp(), 
      AppRoutes.FAVORITES: (ctx) => FavoritesPage(),
      AppRoutes.RECIPES: (ctx) => RecipesPage(receita: DUMMY_RECIPES[0]),
      AppRoutes.INGREDIENTS: (ctx) => IngredientsPage(),
    },
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color.fromRGBO(0, 51, 160, 1),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Absolut Recipe",
        style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 32,
            onPressed: () {
              // TODO: Implementar a lógica para abrir a tela de busca
            },
          ),
        ],
      ),
      body: BottomNavigation(),
    );
  }
}