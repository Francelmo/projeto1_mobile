import 'package:flutter/material.dart';
import 'package:absolut_recipe/data/data.dart';
import 'package:absolut_recipe/models/receita.dart';
import 'package:absolut_recipe/components/cardRecipe.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Receita> receitasFavoritas =
        DUMMY_RECIPES.where((receita) => receita.isFavorite).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos',
        style: TextStyle(color: Colors.white),),
      ),
      body: ListView.builder(
        itemCount: receitasFavoritas.length,
        itemBuilder: (context, index) {
          final receita = receitasFavoritas[index];
          return CardReceita(
            receita: receita,
            cardFontSize: 20,
          );
        },
      ),
    );
  }
}
