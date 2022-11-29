class ComprimissoModel {
  ComprimissoModel({
    this.titulo,
    this.data,
  });

  late String? titulo;
  late String? data;

  todos() {
    return [
      ComprimissoModel(titulo: "Jogo do Brasil", data: "28/11/2022"),
      ComprimissoModel(titulo: "Prova P2", data: "07/12/2022"),
      ComprimissoModel(titulo: "Fim do segundo semestre", data: "17/12/2022"),
      ComprimissoModel(titulo: "Natal", data: "25/12/2022"),
    ];
  }
}
