class Produto {
  final int? id;
  final String? nome;
  final double? avaliacao;
  final double? preco;
  final String? fornecedor;
  final String? descricao;
  final String? image;

  Produto({
    this.id,
    required this.nome,
    required this.avaliacao,
    required this.preco,
    required this.fornecedor,
    required this.descricao,
    required this.image,
  });

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      id: json['id'] as int?,
      nome: json['nome'] as String?,
      avaliacao: json['avaliacao'] as double?,
      preco: json['preco'] as double?,
      fornecedor: json['fornecedor'] as String?,
      descricao: json['descricao'] as String?,
      image: json['image'] as String?,
    );
  }
}
