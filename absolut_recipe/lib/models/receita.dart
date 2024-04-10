class Receita {
  final String id;
  final String nome;
  final String descricao;
  final List ingredientes;
  final String modoPreparo;
  final String imageUrl;
  final bool isFavorite;

  const Receita({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.ingredientes,
    required this.modoPreparo,
    required this.imageUrl,
    required this.isFavorite,
  });
}
