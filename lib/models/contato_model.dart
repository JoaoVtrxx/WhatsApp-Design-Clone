class ContatoModel {
  String nome;
  String ultimaMensagem;
  String hora;
  String foto;
  bool lida;
  bool euMandei;

  ContatoModel({
    required this.nome,
    required this.ultimaMensagem,
    required this.hora,
    required this.foto,
    required this.lida,
    required this.euMandei,
  });
}
