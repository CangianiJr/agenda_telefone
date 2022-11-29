class LembreteModel {
  LembreteModel({
    this.titulo,
    this.hora,
  });

  late String? titulo;
  late String? hora;

  todos() {
    return [
      LembreteModel(titulo: "Entrega da P2", hora: "09:00"),
      LembreteModel(titulo: "Churrasco", hora: "12:30"),
      LembreteModel(titulo: "Pagar boleto", hora: "14:30"),
    ];
  }
}
