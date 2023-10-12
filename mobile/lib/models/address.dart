class Endereco {
  final int? id;
  final String? pais;
  final String? estado;
  final String? cidade;
  final String? bairro;
  final String? rua;
  final int? numero;
  final String? cep;

  Endereco({
    this.id,
    required this.pais,
    required this.estado,
    required this.cidade,
    required this.bairro,
    required this.rua,
    required this.numero,
    required this.cep,
  });

  factory Endereco.fromJson(Map<String, dynamic> json) {
    return Endereco(
      id: json['id'] as int?,
      pais: json['pais'] as String?,
      estado: json['estado'] as String?,
      cidade: json['cidade'] as String?,
      bairro: json['bairro'] as String?,
      rua: json['rua'] as String?,
      numero: json['numero'] as int?,
      cep: json['cep'] as String?,
    );
  }
}
