// import 'package:flutter/material.dart';
// import 'package:flutter_lesson/home.dart';

// class DealPages extends StatelessWidget {
//   // List<Deal> searchResult = [];
//   // HomePage home = HomePage();

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: .map(
//         (deal) {
//           return Card(
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//                 side: const BorderSide(color: Colors.black)),
//             child: ListTile(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               tileColor: Colors.blueGrey[100],
//               leading: Text(
//                 deal.id.toString(),
//               ),
//               title: Text(deal.title!),
//               subtitle: Text(deal.discription!),
//               trailing: const Icon(
//                 Icons.arrow_right,
//                 color: Colors.black,
//               ),
//               onTap: () {},
//             ),
//           );
//         },
//       ).toList(),
//     );
//   }
// }

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
