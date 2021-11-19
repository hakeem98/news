import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, position){
      return Card(
        child:_drawSingleRow() ,
      );
    },
      itemCount: 20,
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
}
