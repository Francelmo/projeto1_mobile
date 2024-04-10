import 'package:absolut_recipe/screens/recipes.dart';
import 'package:flutter/material.dart';
import 'package:absolut_recipe/models/receita.dart';

class CardReceita extends StatelessWidget {
  const CardReceita({Key? key, required this.receita, required this.cardFontSize})
      : super(key: key);

  final Receita receita;
  final double cardFontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipesPage(receita: receita),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(receita.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    //TODO: Implementar a lógica para compartilhar a receita
                  },
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 50,
                    color: Color.fromARGB(100, 0, 0, 0),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: AspectRatio(
                aspectRatio: 5 / 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: receita.nome,
                              style: TextStyle(
                                fontSize: cardFontSize,
                                color: const Color.fromARGB(255, 46, 45, 45),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}