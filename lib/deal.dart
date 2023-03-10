class Deal {
  int? id;
  String? title;
  String? discription;
  Deal({this.id, this.title, this.discription});
}

List<Deal> dealList = [
  Deal(
    id: 1,
    title: 'Сходить в магазин',
    discription: 'Купить молоко,хлеб,сыр',
  ),
  Deal(
    id: 2,
    title: 'Flutter',
    discription: 'Прописать Flutter upgrade',
  ),
  Deal(
    id: 3,
    title: 'Поиграть Dota 2',
    discription: 'Выиграть в турнире',
  ),
  Deal(
    id: 4,
    title: "Сходить за посылкой",
    discription: "Сходить за посылкой на почту",
  ),
];
