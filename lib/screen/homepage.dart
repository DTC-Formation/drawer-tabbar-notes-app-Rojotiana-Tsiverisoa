import 'package:flutter/material.dart';

import 'package:todo_list/colors/my_colors.dart';
import 'package:todo_list/screen/my_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: MyColors.c1,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        drawer: const MyDrawer(),
        body: const SingleChildScrollView(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
