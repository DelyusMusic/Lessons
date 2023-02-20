import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, '/');
              // Navigator.pop(context);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
      ),
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
      // ),
    );
  }
}
