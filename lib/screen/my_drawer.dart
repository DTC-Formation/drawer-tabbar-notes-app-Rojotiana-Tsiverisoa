import 'package:flutter/material.dart';

import 'package:todo_list/colors/my_colors.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: MyColors.c1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/icons/icon.png'),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Todo List',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.height / 1.5,
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Task 1'),
                  trailing: const Icon(
                    Icons.edit,
                    color: MyColors.c2,
                  ),
                  onTap: () => (Navigator.pop(context)),
                ),
                const Divider(height: 0),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Center(
              child: Text('~ By Rojotiana ~'),
            ),
          ),
        ],
      ),
    );
  }
}
