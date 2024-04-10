import 'package:flutter/material.dart';
import 'package:absolut_recipe/components/cardRecipe.dart';
import 'package:absolut_recipe/data/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Início',
        style: TextStyle(color: Colors.white),),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_RECIPES.map((receita) {
          return CardReceita(
            receita: receita,
            cardFontSize: 20,
          );
        }).toList(),
      ),
    );
  }
}
