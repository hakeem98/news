import 'package:flutter/material.dart';
import 'package:news_app/shared ui/navigation_drawer.dart';
import 'home_tabs/whats_new.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/favourites.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum PopOutMenu { CONTACT, SETTINGS, HELP, ABOUT }

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          _popOutMenu(context),
        ],
        bottom: TabBar(
          controller: _tabcontroller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: ("WHAT'S NEW"),
            ),
            Tab(
              text: ("POPULAR"),
            ),
            Tab(
              text: ("FAVOURITES"),
            ),
          ],
        ),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(
          children: [
            WhatsNew(),
            Popular(),
            Favourites(),
          ],
          controller: _tabcontroller,
        ),
      ),
    );
  }

  Widget _popOutMenu(BuildContext context) {
    return PopupMenuButton<PopOutMenu>(
      itemBuilder: (context) { return [
        PopupMenuItem<PopOutMenu>(
          value: PopOutMenu.ABOUT,
          child: Text("ABOUT"),
        ),
        PopupMenuItem<PopOutMenu>(
          value: PopOutMenu.CONTACT,
          child: Text("CONTACT"),
        ),
        PopupMenuItem<PopOutMenu>(
          value: PopOutMenu.HELP,
          child: Text("HELP"),
        ),
        PopupMenuItem<PopOutMenu>(
          value: PopOutMenu.SETTINGS,
          child: Text("SETTINGS"),
        ),
      ];},
      onSelected: (PopOutMenu menu) {

      },
      color: Colors.grey.shade400,
    );
  }
}
