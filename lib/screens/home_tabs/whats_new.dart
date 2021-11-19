import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _drawHeader(),
          _drawTopStories(),
        ],
      ),
    );
  }

  Widget _drawHeader() {
    TextStyle _headerTitle = TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
    TextStyle _headerDescription = TextStyle(
      color: Colors.white,
      fontSize: 18,
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('assets/images/bg2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: Text(
                'This where the title is going to be, here!',
                style: _headerTitle,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 34, right: 34),
              child: Text(
                'Here you can right the description of your title to inform the user',
                style: _headerDescription,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawTopStories() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: _drawSectionTitle('Top Stories')),
          Padding(
            padding: EdgeInsets.all(8),
            child: Card(
              child: Column(
                children: [
                  _drawSingleRow(),
                  _drawLine(),
                  _drawSingleRow(),
                  _drawLine(),
                  _drawSingleRow(),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    bottom: 8,
                  ),
                  child: _drawSectionTitle('Recent Updates'),
                ),
                _drawRecentUpdatesCards(Colors.red),
                _drawRecentUpdatesCards(Colors.green),
                SizedBox(height: 40,)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          SizedBox(
            child: Image(
              image: ExactAssetImage('assets/images/bg2.jpg'),
              fit: BoxFit.cover,
            ),
            width: 124,
            height: 124,
          ),
          SizedBox(
            //sized box between image on the left and text on the right
            width: 19,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'This is card number 1, here you can type your details about this card ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  // sized box between txt on top and writer's name on bottom
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("writer's name.."),
                    Row(
                      children: [
                        Text('15 min'),
                        Icon(
                          Icons.alarm,
                          size: 15,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawLine() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade300,
    );
  }

  Widget _drawSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.grey.shade700),
    );
  }

  Widget _drawRecentUpdatesCards(Color x) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/images/bg2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.only(left: 24, right: 24, top: 6, bottom: 6),
              decoration: BoxDecoration(
                  color: x, borderRadius: BorderRadius.circular(6)),
              child: Text(
                'Sport',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: Center(
              child: Text(
                "here goes your title",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.grey,
                  size: 14,
                ),
                SizedBox(width: 6,),

                Text(
                  '15 min',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
