import 'package:flutter/material.dart';
import 'package:news_app/shared%20ui/navigation_drawer.dart';

import 'home_tabs/favourites.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/whats_new.dart';
class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with TickerProviderStateMixin {

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
        title: Text("Headline News"),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
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
            Tab(text: ("FAVOURITES"),
            ),
          ],
        ),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(children:[
          Favourites(),
          Popular(),
          Favourites(),
        ],
          controller: _tabcontroller,
        ),
      ),
    );
  }
}
