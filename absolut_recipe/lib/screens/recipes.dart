import 'package:flutter/material.dart';
import 'package:absolut_recipe/models/receita.dart';

class RecipesPage extends StatefulWidget {
  final Receita receita;

  const RecipesPage({Key? key, required this.receita}) : super(key: key);

  @override
  _RecipesPageState createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detalhes da Receita',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(
              _isFavorited ? Icons.favorite : Icons.favorite_border,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _isFavorited = !_isFavorited;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.receita.imageUrl,
              height: 200, // Altura desejada para a imagem
              fit: BoxFit.cover, // Ajuste para cobrir o espaço
            ),
            SizedBox(height: 16),
            Text(
              widget.receita.nome,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Descrição:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(widget.receita.descricao),
            SizedBox(height: 16),
            Text(
              'Ingredientes:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.receita.ingredientes
                  .map((ingrediente) => Text('- $ingrediente'))
                  .toList(),
            ),
            SizedBox(height: 16),
            Text(
              'Modo de Preparo:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(widget.receita.modoPreparo),
          ],
        ),
      ),
    );
  }
}
