import 'package:flutter/material.dart';

  // 猜你喜欢
class CommentContent extends StatelessWidget{
   @override
      Widget build(BuildContext context) {
        return Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '猜你喜欢',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black45
                    ),
                  ),
                  FlatButton(
                    onPressed: (){

                    },
                    child: Text(
                      '不看',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue
                      ),
                    ),
                  )
                  // Icon(Icons.delete, color: Colors.black45, size: 20.0,)
                ],
              ),
            ),
            Column(
              children: <Widget>[
                ListTile(
                  onTap: (){

                  },
                  title: Text(
                    'html',
                    style:TextStyle(
                      fontSize: 14.0,
                    )
                  ),
                )
              ],
            )
          ],
        );
      }
}