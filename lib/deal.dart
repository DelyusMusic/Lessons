import 'package:flutter/material.dart';

class DealPages extends StatelessWidget {
  const DealPages({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: dealList.map(
        (e) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              tileColor: Colors.blueGrey[100],
              leading: Text(
                e.id.toString(),
              ),
              title: Text(e.title!),
              subtitle: Text(e.discription!),
              trailing: const Icon(
                Icons.arrow_right,
                color: Colors.black,
              ),
              onTap: () {},
            ),
          );
        },
      ).toList(),
    );
  }
}

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
];
