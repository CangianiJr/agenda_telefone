class ContatoModel {
  ContatoModel({
    this.nome,
    this.favorito,
    this.telefone,
  });

  late String? nome;
  late bool? favorito;
  late String? telefone;

  todos() {
    return [
      ContatoModel(
        nome: "Graziele",
        favorito: true,
        telefone: "(13) 92599-1332",
      ),
      ContatoModel(
        nome: "Clerivaldo",
        favorito: true,
        telefone: "(18) (2267-2054",
      ),
      ContatoModel(
        nome: "Thales",
        favorito: true,
        telefone: "(15) (2523-5127",
      ),
      ContatoModel(
        nome: "Gabriela",
        favorito: false,
        telefone: "(14) 93629-8816",
      ),
      ContatoModel(
        nome: "Gabriel",
        favorito: false,
        telefone: "(12) 93686-4879",
      ),
      ContatoModel(
        nome: "Everson",
        favorito: false,
        telefone: "(11) 92066-7625",
      ),
      ContatoModel(
        nome: "Emannuel",
        favorito: false,
        telefone: "(12) 92413-7205",
      ),
    ];
  }
}
