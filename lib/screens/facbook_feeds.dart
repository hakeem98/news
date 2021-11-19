import 'package:flutter/material.dart';
import 'package:news_app/shared%20ui/navigation_drawer.dart';
class FacebookFeeds extends StatefulWidget {
  @override
  _FacebookFeedsState createState() => _FacebookFeedsState();
}

class _FacebookFeedsState extends State<FacebookFeeds> {
  TextStyle _HashTagStyle = TextStyle(
    color: Colors.deepOrange,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Feeds'),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      drawer: NavigationDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Card(
              margin: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _DrawHeader(),
                  _DrawHastag(),
                  _DrawBody(),
                  _DrawFooter(),
                ],
              ),
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }
  Widget _DrawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
        ),
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Colors.grey,
            ),
            Transform.translate(
              offset: Offset(-10, 0),
              child: Text(
                '25',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Widget _DrawBody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.25,
      child: Image(
        image: ExactAssetImage('assets/images/bg2.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _DrawHastag() {
    return Container(
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "details details details details details details details details details details details details "
                  "details details details details details",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              " #HashTag ",
              style: _HashTagStyle,
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              " #HashTag ",
              style: _HashTagStyle,
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              " #HashTag ",
              style: _HashTagStyle,
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              " #HashTag ",
              style: _HashTagStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _DrawFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(onPressed: (){}, child: Text('10 COMMENTS', style: _HashTagStyle,),),
        Row(
          children: [
            FlatButton(onPressed: (){}, child: Text('SHARE', style: _HashTagStyle,),),
            FlatButton(onPressed: (){}, child: Text('OPEN', style: _HashTagStyle,)),
          ],
        )
      ],
    );
  }
}
