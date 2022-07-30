import 'package:Muchatlu/widgets/category_selector.dart';
import 'package:Muchatlu/widgets/favorites.dart';
import 'package:Muchatlu/widgets/recent_chats.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  void updateSelecctedIndex(int index) {
    print("Selected index: $index");
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
        title: const Text(
          'Muchatlu',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          CategorySelector(updateSelectedIndex: updateSelecctedIndex),
          // getContent(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  // ignore: prefer_const_constructors
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30),
                    topRight: const Radius.circular(30),
                  )),
              child: Column(
                children: const [
                  Favorites(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // getContent() {
  //   switch (selectedIndex) {
  //     case 0:
  //       return Text(selectedIndex.toString());
  //     case 1:
  //       return Text(selectedIndex.toString());
  //     case 2:
  //       return Text(selectedIndex.toString());
  //     case 3:
  //       return Text(selectedIndex.toString());
  //   }
  // }
}
