import 'package:flutter/material.dart';

import 'package:todo_list/colors/my_colors.dart';
import 'package:todo_list/screen/my_drawer.dart';
import 'package:todo_list/class/tabbar_menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<TabBarMenu> menuList = [
      TabBarMenu(
        'New task',
        const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Add a new task'),
              ],
            ),
          ),
        ),
      ),
      TabBarMenu(
        'Details',
        const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Details'),
              ],
            ),
          ),
        ),
      ),
    ];

    List<Tab> myTabs = menuList
        .map((menu) => Tab(
              text: menu.title,
            ))
        .toList();

    contents() {
      return menuList.map((menu) => (menu.content)).toList();
    }

    return SafeArea(
      child: DefaultTabController(
        length: menuList.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(''),
            backgroundColor: MyColors.c1,
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
          drawer: const MyDrawer(),
          body: TabBarView(
            children: contents(),
          ),
        ),
      ),
    );
  }
}
