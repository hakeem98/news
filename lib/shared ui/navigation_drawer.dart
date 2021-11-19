import 'package:flutter/material.dart';
import 'package:news_app/models/nav_menu.dart';
import 'package:news_app/screens/InstagramFeeds.dart';
import 'package:news_app/screens/facbook_feeds.dart';
import 'package:news_app/screens/headline_news.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/twitterFeed.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> NavigationMenu = [
    NavMenuItem('Explore', () => HomeScreen()),
    NavMenuItem("Headline News", () => HeadLineNews()),
    NavMenuItem("Twitter Feed", () => TwitterFeed()),
    NavMenuItem("Instagram Feeds", ()=> InstagramFeed()),
    NavMenuItem("Facebook Feeds", ()=> FacebookFeeds()),

  ];
  List<String> NavMenuTitle = [
    'Explore',
    'Headline News',
    'Read Later',
    'Videos',
    'Photos',
    'Settings',
    'Logout',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 50),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          NavigationMenu[position].destination(),
                    ),
                  );
                },
                title: Text(
                  NavigationMenu[position].title,
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                trailing: Icon(
                  (Icons.chevron_right),
                  color: Colors.grey.shade400,
                ),
              ),
            );
          },
          itemCount: NavigationMenu.length,
        ),
      ),
    );
  }
}
