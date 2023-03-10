import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.white),
            child: UserAccountsDrawerHeader(
              currentAccountPicture: Container(
                alignment: Alignment.topLeft,
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.citypng.com/public/uploads/preview/profile-user-round-red-icon-symbol-download-png-11639594337tco5j3n0ix.png"),
                ),
              ),
              accountName: const Text("Dragon"),
              accountEmail: const Text("awdwdwa"),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              otherAccountsPictures: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.exit_to_app,color: Colors.white,),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text("Settings"),
            leading: const Icon(Icons.settings, color: Colors.blueGrey),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Shops"),
            leading: const Icon(Icons.shop, color: Colors.greenAccent),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Help"),
            leading: const Icon(
              Icons.help,
              color: Colors.lightBlue,
            ),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
