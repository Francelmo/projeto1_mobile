import 'package:flutter/material.dart';
import 'package:absolut_recipe/components/cardMercado.dart';
import 'package:absolut_recipe/data/data.dart';

class IngredientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ingredientes',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_MERCADOS.map((mercado) {
          return CardMercado(
            mercado: mercado,
          );
        }).toList(),
      ),
    );
  }
}
