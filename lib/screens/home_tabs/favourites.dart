import 'dart:math';

import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  List<Color> Randcolor = [
    Colors.green,
    Colors.indigo,
    Colors.brown,
    Colors.redAccent,
    Colors.purple,
    Colors.lightBlueAccent,
  ];
  Random rand = Random();

  Color _getRandomColor() {
    return Randcolor[rand.nextInt(Randcolor.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                _autherRow(),
                SizedBox(height: 16,),
                _newItemRow(),
              ],
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }

  Widget _autherRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/images/bg6.jpg'),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle),
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 10),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Abdul-Hakeem Mohammad",
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      '15 min .',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Life Style',
                      style: TextStyle(
                        color: _getRandomColor(),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          onPressed: () {},
          color: Colors.grey,
        )
      ],
    );
  }

  Widget _newItemRow() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/bg2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          width: 120,
          height: 120,
          margin: EdgeInsets.only(right: 10),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'title title title title title title title title title title title title title title title title',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'details details details details details details details details details details details details',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  height: 1.25,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
