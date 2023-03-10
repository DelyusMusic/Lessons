import 'package:flutter/material.dart';
import 'package:flutter_lesson/calendar.dart';
import 'package:flutter_lesson/deal.dart';
import 'package:flutter_lesson/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Deal> newDealList = List.from(dealList);
  onItemSearch(String value) {
    setState(
      () {
        newDealList = dealList
            .where((element) => element.title!.contains(value))
            .toList();
      },
    );
  }

  // ];
  int index = 0;

  TextEditingController searchController = TextEditingController();
  String title = "Список дел";
  bool tittleAppBar = false;

  @override
  Widget build(BuildContext context) {
    Widget listSearchWidget(BuildContext context) {
      return ListView(
        children: newDealList.map(
          (deal) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: const BorderSide(
                  color: Colors.black,
                ),
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                tileColor: Colors.blueGrey[100],
                leading: Text(
                  deal.id.toString(),
                ),
                title: Text(deal.title!),
                subtitle: Text(deal.discription!),
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

    final list = [
      listSearchWidget(context), // 0
      const CalendarPage(), // 1
    ];
    AppBar appBarSearch = AppBar(
      centerTitle: true,
      title: TextField(
        decoration: const InputDecoration(
          label: Text("Название"),
        ),
        controller: searchController,
        onChanged: onItemSearch,
      ),
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                searchController.clear();
                tittleAppBar = false;
              });
            },
            icon: const Icon(Icons.close))
      ],
    );
    AppBar appBar = AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                tittleAppBar = true;
              });
            },
            icon: const Icon(Icons.search))
      ],
    );

    return Scaffold(
      appBar: tittleAppBar ? appBarSearch : appBar,
      body: list.elementAt(index),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      drawer: const MenuDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.white,
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "Список дел"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: "Календарь")
        ],
        onTap: (value) {
          setState(
            () {
              index = value;
              if (index == 0) {
                title = 'Список дел';
              } else {
                title = 'Календарь';
              }
            },
          );
        },
      ),
    );
  }
}
