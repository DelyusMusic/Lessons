import 'package:flutter/material.dart';
import 'package:flutter_lesson/calendar.dart';
import 'package:flutter_lesson/deal.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<User> users = List.from(DBConnection().listUserMap());
  // Future users = DBConnection().list();
  // int index = 0;
  // final listPages = [
  //   const DealPages(),
  //   const CalendarPage(),
  // ];
  int index = 0;
  final list = [
    const DealPages(),
    const CalendarPage(),
  ];
  String title = "Список дел";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/');
              // Navigator.pop(context);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
        // body: ListView(
        //   physics: const BouncingScrollPhysics(),
        //   children: users.map((user) {
        //     return Card(
        //       child: ListTile(
        //         title: Text(user.name!),
        //         subtitle: Text(user.login!),
        //         onTap: () {},
        //       ),
        //     );
        //   }).toList(),
        // ),
        // body: ListView.builder(
        //   itemCount: users.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text(users as String),
        //     );
        //   },
      ),
      body: list.elementAt(index),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      drawer: const Drawer(),
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
