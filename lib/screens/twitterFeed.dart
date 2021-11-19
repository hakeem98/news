import 'package:flutter/material.dart';
import 'package:news_app/shared ui/navigation_drawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feed'),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (context, position) {
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                _drawCardHeader(),
                _drawCardBody(),
                _drawLine(),
                _drawCardFooter(),
              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _drawCardHeader() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundColor: Colors.purple,
            radius: 20,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("'User's Name"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "User's UserName",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Date Of The Tweet",
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _drawCardBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
      child: Text(
        "details details details details details details details ",
        style: TextStyle(color: Colors.grey.shade500),
      ),
    );
  }

  Widget _drawCardFooter() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.repeat,
                  color: Colors.yellow.shade800,
                ),
                onPressed: () {},
              ),
              Text(
                "25",
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ],
          ),
          Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Text(
                  "SHARE",
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "OPEN",
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _drawLine() {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
      margin: EdgeInsets.all(16),
    );
  }
}
