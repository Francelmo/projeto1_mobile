import 'package:flutter/material.dart';
import 'package:absolut_recipe/models/mercado.dart';
import 'package:url_launcher/url_launcher.dart';

class CardMercado extends StatelessWidget {
  final Mercado mercado;

  const CardMercado({Key? key, required this.mercado}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: Icon(Icons.store),
        title: Text(mercado.nome),
        onTap: () {
          _launchURL(mercado.linkSite);
        },
      ),
    );
  }

  // Função para abrir o URL no navegador
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
